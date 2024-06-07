import allure
from selenium.webdriver.remote.webelement import WebElement
from smart_assertions import soft_assert


class Verifications:

    ####################################################################################################################
    # Function Name: verify_equals
    # Function Description: This function verifies if the actual value is equal to the expected value
    # Function Parameters: actual, expected
    ####################################################################################################################
    @staticmethod
    @allure.step("Verifying equals")
    def verify_equals(actual, expected):
        assert actual == expected, f"Expected: {expected}, but got: {actual}"

    ####################################################################################################################
    # Function Name: is_displayed
    # Function Description: This function verifies if the element is displayed
    # Function Parameters: elem
    ####################################################################################################################

    @staticmethod
    @allure.step("Verifying element is displayed")
    def is_displayed(elem: WebElement):
        assert elem.is_displayed(), f"{elem.text} is not displayed"

    ####################################################################################################################
    # Function Name: verify_not_equals using smart assertions
    # Function Description: This function verifies if the actual value is not equal to the expected value
    # Function Parameters: actual, expected
    ####################################################################################################################

    @staticmethod
    @allure.step("Verifying equals using smart assertions")
    def verify_soft_assert_equals(actual, expected):
        soft_assert(actual == expected, f"Expected: {expected}, but got: {actual}")

    ####################################################################################################################
    # Function Name: verify_not_equals using smart assertions
    # Function Description: This function verifies if the actual value is not equal to the expected value
    # Function Parameters: actual, expected
    ####################################################################################################################
    @staticmethod
    @allure.step("Verifying not equals using smart assertions")
    def verify_soft_assert_not_equals(actual, expected):
        soft_assert(actual != expected, f"This {actual} should not be equal to {expected}")

    ####################################################################################################################
    # Function Name: verify_soft_assert_text_value
    # Function Description: This function verifies if the text not appears in the value using smart assertions
    # Function Parameters: text, value
    ####################################################################################################################


    @staticmethod
    @allure.step("Verifying text using smart assertions")
    def verify_soft_assert_text_value(text, value):
        soft_assert(value not in text, f"The text {value} appears in the text: {text}")

    ####################################################################################################################
    # Function Name: verify_text_in_value
    # Function Description: This function verifies if the text appears in the value
    # Function Parameters: string, value
    ####################################################################################################################

    @staticmethod
    @allure.step("Verifying text")
    def verify_text_in_value(string, value):
        assert string in value, f"The string {string} is not in the value: {value}"

    ####################################################################################################################
    # Function Name: verify_not_equals
    # Function Description: This function verifies value is false
    # Function Parameters: boolean_value
    ####################################################################################################################

    @staticmethod
    @allure.step("Verifying not true")
    def verify_not_true(boolean_value):
        assert not boolean_value, f"The value is true"
