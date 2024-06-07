import allure

from extentions.db_actions import DBActions
from utilities.common_ops import get_data, read_csv, read_json_file

columns_update_data = ["PlayoffAppearances", "Championships", "Record"]


class DBFlows:

    ####################################################################################################################
    # Function Name: get_db_team_data
    # Function Description: This function gets the team data (playoff appearances, championships & team record) from DB
    # it sends the data to the DBActions.get function (columns, table_name, where_name, where_value)
    # where_name - is the column name, where_value - is the value to be retrieved (team_location)
    # Function Parameters: table_name, team_location
    # Returns: results from the db
    ####################################################################################################################

    @staticmethod
    @allure.step("Get Team data (playoff appearances, championships & team record) from DB")
    def get_db_team_data(table_name, team_location):
        where_name = "Location"
        results = DBActions.get(columns=columns_update_data, table_name=table_name, where_name=where_name,
                                where_value=team_location)
        return results

    ####################################################################################################################
    # Function Name: update_db_team_data
    # Function Description: This function updates the team data (playoff appearances, championships & team record) in DB
    # it sends the data to the DBActions.update function (columns, table_name, playoff_appearances, championships, record)
    # Function Parameters: table_name, playoff_appearances, championships, record
    ####################################################################################################################

    @staticmethod
    @allure.step("Update Team data (playoff appearances, championships & team record) in DB")
    def update_db_team_data(table_name, playoff_appearances, championships, record):
        DBActions.update(columns=columns_update_data, table_name=table_name, playoff_appearances=playoff_appearances,
                         championships=championships, record=record)

    ####################################################################################################################
    # Function Name: insert_player_data
    # Function Description: This function inserts player data into the DB (roster table)
    # it sends the data to the DBActions.insert function (table_name, values)
    # Function Parameters: table_name, values
    ####################################################################################################################

    @staticmethod
    @allure.step("Insert player data into DB (roster table)")
    def insert_player_data(table_name, values):
        DBActions.insert(table_name=table_name, values=values)

    ####################################################################################################################
    # Function Name: delete_player_data
    # Function Description: This function deletes player data from the DB (roster table)
    # it sends the data to the DBActions.delete function (table_name, where_name, where_value)
    # where_name - is the column name, where_value - is the value to be deleted (player_name)
    # Function Parameters: table_name, player_name
    ####################################################################################################################

    @staticmethod
    @allure.step("Delete player from DB (roster table)")
    def delete_player_data(table_name, player_name):
        where_name = "Player"
        DBActions.delete(table_name=table_name, where_name=where_name, where_value=player_name)

    ####################################################################################################################
    # Function Name: get_player_data
    # Function Description: This function gets player data from the DB (roster table)
    # it sends the data to the DBActions.get function (columns, table_name, where_name, where_value)
    # where_name - is the column name, where_value - is the value to be retrieved (player_name)
    # Function Parameters: table_name, player_name
    # Returns: results from the db
    ####################################################################################################################

    @staticmethod
    @allure.step("Get Player data from DB")
    def get_player_data(table_name, player_name):
        where_name = "Player"
        results = DBActions.get(columns=["*"], table_name=table_name, where_name=where_name, where_value=player_name)
        return results

    ####################################################################################################################
    # Function Name: get_highest_paid_player
    # Function Description: This function gets the highest paid player from the DB
    # it sends the data to the DBActions.get_top_record function (columns, table_name, limit_value)
    # Function Parameters: table_name
    # Variables: columns - the columns to be retrieved, limit_value - the number of records to be retrieved
    # Returns: results from the db
    ####################################################################################################################

    @staticmethod
    @allure.step("Get team's highest paid player from DB")
    def get_highest_paid_player(table_name):
        columns = ["Player", "Guaranteed"]
        limit_value = 1
        results = DBActions.get_top_record(columns=columns, table_name=table_name, limit_value=limit_value)
        return results

    ####################################################################################################################
    # Function Name: get_top_three_records
    # Function Description: This function gets the top three records from the DB
    # it sends the data to the DBActions.get_top_record function (columns, table_name, limit_value)
    # Function Parameters: table_name
    # Variables: columns - the columns to be retrieved, limit_value - the number of records to be retrieved
    # Returns: results from the db
    ####################################################################################################################

    @staticmethod
    @allure.step("Get top three records from DB")
    def get_top_three_records(table_name):
        columns = ["Season", "3P"]
        limit_value = 3
        results = DBActions.get_top_record(columns=columns, table_name=table_name, limit_value=limit_value)
        return results




#######################################################################################################################
    # Variable Name:nba_data
    # Variable Description: This variable reads the NBA team data from the csv file
    # Variable Name: testNBAData
    # Variable Description: This variable stores the NBA team data in a list
#######################################################################################################################
nba_data = read_csv(get_data('Updated_NBA_Team_Data'))
testNBAData = [
    (nba_data[0][0], nba_data[0][1], nba_data[0][2], nba_data[0][3], nba_data[0][4])
]
#######################################################################################################################
    # Variable Name:nba_data_player
    # Variable Description: This variable reads the NBA player data from the json file
    # Variable Name: nba_steph_curry_3_point_percentage
    # Variable Description: This variable stores the 3 point percentage of Steph Curry in a dictionary
#######################################################################################################################

nba_data_player = read_json_file(get_data('NBA_Player'))
#######################################################################################################################
    # Variable Name:nba_steph_curry_3_point_percentage
    # Variable Description: This variable reads the 3 point percentage of Steph Curry from the json file
    # Variable Name: nba_steph_curry_3_point_percentage
    # Variable Description: This variable stores the 3 point percentage of Steph Curry in a dictionary
#######################################################################################################################
nba_steph_curry_3_point_percentage = read_json_file(get_data('NBA_Steph_Curry'))
