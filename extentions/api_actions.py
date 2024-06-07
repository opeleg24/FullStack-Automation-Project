import allure
import requests
from requests.auth import HTTPBasicAuth

header = {'Content-Type': 'application/json'}


class APIActions:

    ####################################################################################################################
    # Function Name: post
    # Function Description: This function is used to send a POST request.
    # Function Parameters: path - the path of the request, payload - the payload of the request, user authentication
    # Function returns: response - the response of the request
    ####################################################################################################################
    @staticmethod
    @allure.step("POST request")
    def post(path, payload, user, password):
        response = requests.post(path, json=payload, headers=header, auth=HTTPBasicAuth(user, password))
        return response

    ####################################################################################################################
    # Function Name: get
    # Function Description: This function is used to send a GET request.
    # Function Parameters: path - the path of the request, user authentication
    # Function returns: response - the response of the request
    ####################################################################################################################

    @staticmethod
    @allure.step("GET request")
    def get(path, user, password):
        response = requests.get(path, headers=header, auth=HTTPBasicAuth(user, password))
        return response

    ####################################################################################################################
    # Function Name: put
    # Function Description: This function is used to send a PUT request.
    # Function Parameters: path - the path of the request, payload - the payload of the request, user authentication
    # Function returns: response - the response of the request
    ####################################################################################################################

    @staticmethod
    @allure.step("PUT request")
    def put(path, payload, user, password):
        response = requests.put(path, json=payload, headers=header, auth=HTTPBasicAuth(user, password))
        return response

    ####################################################################################################################
    # Function Name: delete
    # Function Description: This function is used to send a DELETE request.
    # Function Parameters: path - the path of the request, user authentication
    # Function returns: response - the response of the request


    @staticmethod
    @allure.step("DELETE request")
    def delete(path, user, password):
        response = requests.delete(path, headers=header, auth=HTTPBasicAuth(user, password))
        return response

    ####################################################################################################################
    # Function Name: extract_value
    # Function Description: This function is used to extract a value from a response.
    # Function Parameters: response - the response to extract the value from, nodes - the nodes to extract the value from
    # Function returns: extracted_value - the extracted value
    ####################################################################################################################

    @staticmethod
    @allure.step("Extract value from response")
    def extract_value(response, nodes):
        extracted_value = None
        response_json = response.json()
        if len(nodes) == 0:
            return response_json
        elif len(nodes) == 1:
            extracted_value = response_json[nodes[0]]
        elif len(nodes) == 2:
            extracted_value = response_json[nodes[0]][nodes[1]]
        elif len(nodes) == 3:
            extracted_value = response_json[nodes[0]][nodes[1]][nodes[2]]
        return extracted_value
