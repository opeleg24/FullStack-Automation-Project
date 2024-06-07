import pytest
import allure
from smart_assertions import verify_expectations

from extentions.db_actions import DBActions
from extentions.verifications import Verifications
from workflows import db_flows
from workflows.db_flows import DBFlows

max_contract_in_team_bucks = "Giannis Antetokounmpo"
team_table_name = "warriors_team_roster"
table_name_salaries = "bucks_team_payroll"
player_table_top_3_results = "stephen_curry"


@pytest.mark.usefixtures('init_db_connection')
class Test_DB:

    @allure.title("Test01: Update Team Data to 2024 stats & verify the data in DB")
    @allure.description("This test updates the team data (Playoff Appearances, Championships, Team record) & verifies "
                        "the data in the DB from an external excel file")
    @pytest.mark.parametrize("team_location,team_name,playoff_appearances,championships,record", db_flows.nba_data)
    def test_update_team_data_playoffs_and_championships(self, team_location, team_name, playoff_appearances,
                                                         championships, record):
        DBFlows.update_db_team_data(team_name, playoff_appearances, championships, record)
        response_db_actual = DBFlows.get_db_team_data(team_name, team_location)
        Verifications.verify_soft_assert_equals(playoff_appearances, response_db_actual[0][0])
        Verifications.verify_soft_assert_equals(championships, response_db_actual[0][1])
        Verifications.verify_soft_assert_equals(record, response_db_actual[0][2])
        verify_expectations()

    @allure.title("Test02: Insert Player Data into DB")
    @allure.description("This test inserts player data into the DB")
    def test_insert_player_data(self):
        DBFlows.insert_player_data(team_table_name, db_flows.nba_data_player)

    @allure.title("Test03: Verify Created Player Data in DB")
    @allure.description("This test verifies the created player data in the DB, from an external json file")
    def test_verify_inserted_player(self):
        player_data = DBFlows.get_player_data(team_table_name, db_flows.nba_data_player["player"])
        for (json_key, json_value), tuple_value in zip(db_flows.nba_data_player.items(), player_data[0]):
            Verifications.verify_soft_assert_equals(json_value, tuple_value)
        verify_expectations()

    @allure.title("Test04: Delete Player Data from DB")
    @allure.description("This test deletes player data from the DB and verifies the data in the DB")
    def test_delete_player_data(self):
        DBFlows.delete_player_data(team_table_name, db_flows.nba_data_player["player"])
        response_db_actual = DBFlows.get_player_data(team_table_name, db_flows.nba_data_player["player"])
        Verifications.verify_equals(0, len(response_db_actual))

    @allure.title("Test05: Get Highest Paid Player from DB -Team: Milwaukee Bucks")
    @allure.description("This test gets the highest paid player from the DB and verifies the data in the DB")
    def test_get_highest_paid_player(self):
        response_db_actual = DBFlows.get_highest_paid_player(table_name_salaries)
        Verifications.verify_equals(max_contract_in_team_bucks, response_db_actual[0][0])

    @allure.title("Test06: Get the best 3% percentage seasons of steph curry from DB & verify the data in DB")
    @allure.description("This test gets the top 3, 3% percentage seasons of steph curry"
                        " from the DB and verifies the data in the DB, from an external json file")
    def test_get_top_three_records(self):
        actual_db = DBFlows.get_top_three_records(player_table_top_3_results)
        expected_json = db_flows.nba_steph_curry_3_point_percentage
        counter = 0
        for data in actual_db:
            Verifications.verify_soft_assert_equals(data[0], expected_json[counter]["season"])
            Verifications.verify_soft_assert_equals(data[1], expected_json[counter]["3P%"])
            counter += 1
        verify_expectations()
