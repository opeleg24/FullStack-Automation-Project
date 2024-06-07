import allure
from smart_assertions import verify_expectations

from extentions.verifications import Verifications
from utilities.common_ops import get_data
from workflows.api_flows import APIFlows

team_name = "Testing001"
team_email = "jacqueline24@example.org"
user_email = "admin@localhost"
updated_admin_user = \
    {"userName": "Testing001",
     "theme": "light",
     }
server_message = "Cannot remove last organization admin"
organization_name = "Main Org."
user_role_in_organization = "Admin"


class Test_API:

    @allure.title("Test01: Create team & verify status code")
    @allure.title("This test case will create a new team in grafana and verify the status code")
    def test_create_and_verify_team(self):
        response_status_code = APIFlows.create_team_flow(team_name, team_email)
        Verifications.verify_equals(response_status_code, 200)

    @allure.title("Test02: Verify team name")
    @allure.title("This test will verify the name of the team")
    def test_verify_team_name(self):
        nodes = ["teams", 0, "name"]
        name_actual = APIFlows.get_team_value_from_grafana_api(nodes)
        Verifications.verify_equals(name_actual, team_name)

    @allure.title("Test03: Get actual user's (admin) team")
    @allure.title("This test will get the team of the admin actual user")
    def test_get_admin_user_team(self):
        nodes = ["id"]
        id_actual = APIFlows.get_actual_admin_user(nodes)
        admin_team_name_actual = APIFlows.get_team_by_user_id(id_actual)
        Verifications.verify_equals(admin_team_name_actual, team_name)

    @allure.title("Test04: Update actual user(admin)")
    @allure.title("This test case will update the actual user (admin)")
    def test_update_admin_user(self):
        nodes = ["id"]
        id_actual = APIFlows.get_actual_admin_user(nodes)
        response_status_code = APIFlows.update_team_flow(id_actual, get_data("UserEmail"),
                                                         updated_admin_user['userName'],
                                                         "admin", updated_admin_user['theme'])
        Verifications.verify_equals(response_status_code, 200)

    @allure.title("Test05: Verify actual user(admin)")
    @allure.title("This test case will verify the updated actual user(admin)")
    def test_verify_updated_admin_user(self):
        nodes = []
        admin_user_actual = APIFlows.get_actual_admin_user(nodes)
        Verifications.verify_soft_assert_equals(admin_user_actual["name"],
                                                updated_admin_user["userName"])
        Verifications.verify_soft_assert_equals(admin_user_actual["theme"],
                                                updated_admin_user["theme"])
        verify_expectations()

    @allure.title("Test06: Verify actual user role in main organization")
    @allure.title("This test case will verify that the actual user is an admin and a member of the main organization")
    def test_verify_admin_user_member_of_main_organization(self):
        organization_actual = APIFlows.get_organizations_of_actual_user()
        Verifications.verify_soft_assert_equals(organization_actual[0]["name"], organization_name)
        Verifications.verify_soft_assert_equals(organization_actual[0]["role"], user_role_in_organization)
        verify_expectations()

    @allure.title("Test07: Attempt to delete admin user form organization & verify server message and status code")
    @allure.title("This test case will attempt to delete the admin user from the main organization in the system"
                  "and verify the server message and status code")
    def test_delete_admin_user_from_main_organization(self):
        nodes = ["id"]
        id_actual = APIFlows.get_actual_admin_user(nodes)
        response = APIFlows.delete_admin_from_organization(id_actual)
        Verifications.verify_soft_assert_not_equals(response.status_code, 200)
        Verifications.verify_soft_assert_equals(response.json()["message"],
                                                server_message)
        verify_expectations()

    @allure.title("Test08:Delete team & verify status code")
    @allure.title("This test case will delete the team and verify the status code")
    def test_delete_team(self):
        nodes = ["teams", 0, "id"]
        team_id = APIFlows.get_team_value_from_grafana_api(nodes)
        response_status_code = APIFlows.delete_team_flow(team_id)
        Verifications.verify_equals(response_status_code, 200)
