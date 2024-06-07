import allure
from extentions.api_actions import APIActions
from utilities.common_ops import get_data

url = get_data("APIUrl")
user = get_data("UserName")
password = get_data("Password")


class APIFlows:

    ####################################################################################################################
    # Function Name: create_team_flow
    # Description: Uses post method to create a team in Grafana - sends a request to the Grafana API
    # Functions Parameters: name, email - the request payload for the post method
    # Returns: the status code of the response
    ####################################################################################################################

    @staticmethod
    @allure.step("Create team flow")
    def create_team_flow(name, email):
        payload = {"name": name, "email": email}
        response = APIActions.post(url + 'api/teams', payload, user, password)
        return response.status_code


    ####################################################################################################################
    # Function Name: get_team_value_from_grafana_api
    # Description: Uses get method to get the team value from Grafana API
    # Functions Parameters: nodes - the path to the value in the response
    # Returns: the value of the team
    ####################################################################################################################

    @staticmethod
    @allure.step("Get team value from grafana api flow")
    def get_team_value_from_grafana_api(nodes):
        response = APIActions.get(url + 'api/teams/search', user, password)
        return APIActions.extract_value(response, nodes)


    ####################################################################################################################
    # Function Name: get_actual_admin_user
    # Description: Uses get method to get the actual admin user
    # Functions Parameters: nodes - the path to the value in the response
    # Returns: the value of the actual admin user
    ####################################################################################################################

    @staticmethod
    @allure.step("Get admin user")
    def get_actual_admin_user(nodes):
        response = APIActions.get(url + 'api/user', user, password)
        return APIActions.extract_value(response, nodes)

    ####################################################################################################################
    # Function Name: get_team_by_user_id
    # Description: Uses get method to get the team by user id
    # Functions Parameters: user_id - the user id
    # Returns: the team name
    ####################################################################################################################

    @staticmethod
    @allure.step("Get teams for global admin user flow")
    def get_team_by_user_id(user_id):
        response = APIActions.get(url + 'api/users/' + str(user_id) + '/teams', user, password)
        return response.json()[0]["name"]

    ####################################################################################################################
    # Function Name: update_team_flow
    # Description: Uses put method to update a team in Grafana - sends a request to the Grafana API
    # Functions Parameters: user_id, email, name, user_login, theme - the request payload for the put method
    # Returns: the status code of the response
    ####################################################################################################################

    @staticmethod
    @allure.step("Update admin user flow")
    def update_team_flow(user_id, email, name, user_login, theme):
        payload = {"email": email, "name": name, "login": user_login, "theme": theme}
        response = APIActions.put(url + 'api/users/' + str(user_id), payload, user, password)
        return response.status_code

    ####################################################################################################################
    # Function Name: get_team_by_user_id
    # Description: Uses get method to get the team by user id
    # Functions Parameters: user_id - the user id
    # Returns: the team name
    ####################################################################################################################


    @staticmethod
    @allure.step("Get teams for global admin user flow")
    def get_team_by_user_id(user_id):
        response = APIActions.get(url + 'api/users/' + str(user_id) + '/teams', user, password)
        return response.json()[0]["name"]

    ####################################################################################################################
    # Function Name: get_actual_admin_user
    # Description: Uses get method to get the actual admin user
    # Functions Parameters: nodes - the path to the value in the response
    # Returns: the value of the actual admin user
    ####################################################################################################################

    @staticmethod
    @allure.step("Get organizations of the actual user (admin)")
    def get_organizations_of_actual_user():
        response = APIActions.get(url + 'api/user/orgs', user, password)
        return response.json()

    ####################################################################################################################
    # Function Name: delete_admin_from_organization
    # Description: Uses delete method to delete the main admin user from the main organization
    # Functions Parameters: user_id - the user id
    # Returns: the response
    ####################################################################################################################

    @staticmethod
    @allure.step("Attempt to delete main admin user from main organization flow")
    def delete_admin_from_organization(user_id):
        response = APIActions.delete(url + 'api/org/users/' + str(user_id), user, password)
        return response

    ####################################################################################################################
    # Function Name: delete_team_flow
    # Description: Uses delete method to delete a team in Grafana
    # Functions Parameters: team_id - the team id
    # Returns: the status code of the response
    ####################################################################################################################

    @staticmethod
    @allure.step("Delete team flow")
    def delete_team_flow(team_id):
        response = APIActions.delete(url + 'api/teams/' + str(team_id), user, password)
        return response.status_code
