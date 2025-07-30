import csv
import json
import time

from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import test_cases.conftest as conf
import xml.etree.ElementTree as ET


####################################################################################################################
# Function Name:get_data
# Function Description: This function is used to get data from data.xml file
# Function Parameters: node_name
# Function Return: String - node value
####################################################################################################################

def get_data(node_name):
    root = ET.parse('../configuration/data.xml').getroot()
    return root.find('.//' + node_name).text


####################################################################################################################
# Function Name: read_json_file
# Function Description: This function is used to read json file
# Function Parameters: file_path
# Function Return: json file
####################################################################################################################
def read_json_file(file_path):
    with open(file_path, 'r') as file:
        return json.load(file)


####################################################################################################################
# Function Name: wait
# Function Description: This function is used to wait for an element
# Function Parameters: for_element, elem
####################################################################################################################
def wait(for_element, elem):
    if for_element == 'element_exists':
        WebDriverWait(conf.driver, 10).until(EC.presence_of_element_located((elem[0], elem[1])))
    elif for_element == 'element_displayed':
        WebDriverWait(conf.driver, 10).until(EC.visibility_of_element_located((elem[0], elem[1])))


####################################################################################################################
# Function Name: wait_for_text
# Function Description: This function is used to wait for an element
# Function Parameters: elem, text
####################################################################################################################
def wait_for_text(elem, text):
    WebDriverWait(conf.driver, 10).until(EC.text_to_be_present_in_element((elem[0], elem[1]), text))


####################################################################################################################
# Function Name: read_csv
# Function Description: This function is used to read csv file
# Function Parameters: file_name
# Function Return: data- array
####################################################################################################################
def read_csv(file_name):
    data = []
    with open(file_name, newline='') as file:
        reader = csv.reader(file)
        for row in reader:
            data.insert(len(data), row)
        return data


####################################################################################################################
# Function Name: get_time_stamp
# Function Description: This function is used to get time stamp
# Function Return: time stamp
####################################################################################################################
def get_time_stamp():
    return time.time()


class For:
    ####################################################################################################################
    # Variable Names (Enums): ELEMENT_EXISTS, ELEMENT_DISPLAYED
    # Variable Description: These variables are used to wait for an element
    ####################################################################################################################
    ELEMENT_EXISTS = 'element_exists'
    ELEMENT_DISPLAYED = 'element_displayed'


class Direction:
    ####################################################################################################################
    # Variable Names (Enums): UP, DOWN, LEFT, RIGHT
    # Variable Description: These variables are used to navigate in a direction (mobile app)
    UP = 'up'
    DOWN = 'down'
    LEFT = 'left'
    RIGHT = 'right'
