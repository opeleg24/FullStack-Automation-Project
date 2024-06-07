import allure
from selenium.webdriver.remote.webelement import WebElement
import test_cases.conftest as conf


class UiActions:

    ####################################################################################################################
    # Function Name: click
    # Function Description: This function is used to click an element.
    # Function Parameters: elem - the element to click
    ####################################################################################################################

    @staticmethod
    @allure.step("Clicking element")
    def click(elem: WebElement):
        elem.click()

    ####################################################################################################################
    # Function Name: clear_text
    # Function Description: This function is used to clear a text field.
    # Function Parameters: elem - the text field to clear
    ####################################################################################################################

    @staticmethod
    @allure.step("Clearing text field")
    def clear_text(elem: WebElement):
        elem.clear()

    ####################################################################################################################
    # Function Name: update_text
    # Function Description: This function is used to update a text field.
    # Function Parameters: elem - the text field to update
    #                      value - the value to update the text field with
    ####################################################################################################################

    @staticmethod
    @allure.step("Updating text field")
    def update_text(elem: WebElement, value):
        elem.send_keys(value)

    ####################################################################################################################
    # Function Name: get_text
    # Function Description: This function is used to get the text of an element.
    # Function Parameters: elem - the element to get the text from
    # Function returns: text - the text of the element
    ####################################################################################################################

    @staticmethod
    @allure.step("Getting text")
    def get_text(elem: WebElement):
        return elem.text

    ####################################################################################################################
    # Function Name: select_option
    # Function Description: This function is used to select an option from a dropdown.
    # Function Parameters: elem - the dropdown element
    #                      option - the option to select
    ####################################################################################################################

    @staticmethod
    @allure.step("Selecting option from dropdown")
    def select_option(elem: WebElement, option):
        adults_option_form = conf.Select(elem)
        adults_option_form.select_by_visible_text(option)

    ####################################################################################################################
    # Function Name: get_attribute
    # Function Description: This function is used to get an attribute of an element.
    # Function Parameters: elem - the element to get the attribute from
    #                      attribute - the attribute to get
    # Function returns: attribute - the attribute value

    @staticmethod
    @allure.step("Getting attribute")
    def get_attribute(elem: WebElement, attribute):
        return elem.get_attribute(attribute)
