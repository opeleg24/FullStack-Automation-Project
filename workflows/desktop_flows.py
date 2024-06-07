import allure

import page_objects
import utilities.manage_pages as page
from extentions.ui_actions import UiActions


class DesktopFlows:

    ####################################################################################################################
    # Function Name: calculate_flow
    # Function Description: This function is used to calculate the equation. it receives the equation as a string and
    # goes through each character in the equation (in a for loop), clicking the corresponding button on the calculator
    # for each character. Finally, it clicks equal button at the end.
    ####################################################################################################################

    @staticmethod
    @allure.step("Calculate equation")
    def calculate_flow(equation):
        for i in equation:
            DesktopFlows.calculator_click(i)
        UiActions.click(page.desktop_standard_page.get_equal())

    ####################################################################################################################
    # Function Name: calculator_click
    # Function Description: This function is used to click the corresponding button on the calculator, according to the
    # value received. The function receives a value and clicks the corresponding button on the calculator.
    # Function Parameters: value - the value to click on the calculator
    ####################################################################################################################

    @staticmethod
    def calculator_click(value):
        if value == '0':
            UiActions.click(page.desktop_standard_page.get_zero())
        elif value == '1':
            UiActions.click(page.desktop_standard_page.get_one())
        elif value == '2':
            UiActions.click(page.desktop_standard_page.get_two())
        elif value == '3':
            UiActions.click(page.desktop_standard_page.get_three())
        elif value == '4':
            UiActions.click(page.desktop_standard_page.get_four())
        elif value == '5':
            UiActions.click(page.desktop_standard_page.get_five())
        elif value == '6':
            UiActions.click(page.desktop_standard_page.get_six())
        elif value == '7':
            UiActions.click(page.desktop_standard_page.get_seven())
        elif value == '8':
            UiActions.click(page.desktop_standard_page.get_eight())
        elif value == '9':
            UiActions.click(page.desktop_standard_page.get_nine())
        elif value == '+':
            UiActions.click(page.desktop_standard_page.get_plus())
        elif value == '-':
            UiActions.click(page.desktop_standard_page.get_minus())
        elif value == '*':
            UiActions.click(page.desktop_standard_page.get_multiply())
        elif value == '/':
            UiActions.click(page.desktop_standard_page.get_divide())
        elif value == '^':
            UiActions.click(page.desktop_standard_page.get_power())
        else:
            raise Exception("Invalid value" + value)

    ####################################################################################################################
    # Function Name: get_result
    # Function Description: This function is used to get the result of the calculation. It gets the text of the result
    # label and returns it.
    # The string is stripped from the "התצוגה היא " text, we get from the calculator.
    # Function returns: result - the result of the calculation
    ####################################################################################################################


    @staticmethod
    @allure.step("Get calculator result")
    def get_result():
        result = UiActions.get_text(page.desktop_standard_page.get_result()).replace("התצוגה היא ", "").strip()
        return result

    ####################################################################################################################
    # Function Name: clear_calculator
    # Function Description: This function is used to clear the calculator. It clicks the clear button on the calculator.
    ####################################################################################################################

    @staticmethod
    @allure.step("Clear calculator")
    def clear_calculator():
        UiActions.click(page.desktop_standard_page.get_clear())

    ####################################################################################################################
    # Function Name: time_conversion_flow
    # Function Description: This function is used to calculate the time conversion. It navigates to the time calculator
    # page, updates the minutes field with the value received and clicks the calculate button.
    # Function Parameters: minutes - the minutes value to convert
    ####################################################################################################################

    @staticmethod
    @allure.step("Time conversion calculation")
    def time_conversion_flow(minutes):
        UiActions.click(page.desktop_side_nav.get_open_side_panel())
        UiActions.click(page.desktop_side_nav.get_time_calculator())
        UiActions.update_text(page.desktop_time_page.get_minutes(), minutes)


    ####################################################################################################################
    # Function Name: get_time_conversion_result_hours
    # Function Description: This function is used to get the result of the time conversion.
    # Function Variables: hours_value split the result string and get the hours value (using only the string text we
    # need for the calculation).
    # Function returns: hours_value - the hours value of the time conversion
    ####################################################################################################################

    @staticmethod
    @allure.step("Get time conversion result - hours")
    def get_time_conversion_result_hours():
        result = UiActions.get_text(page.desktop_time_page.get_hours())
        hours_value = result.split('-')[1].split()[0]
        return hours_value

    ####################################################################################################################
    # Function Name: return_to_standard_calculator
    # Function Description: This function is used to return to the standard calculator page. It clicks the side panel
    # button and then clicks the standard calculator button.
    ####################################################################################################################

    @staticmethod
    @allure.step("Return to main page - standard calculator")
    def return_to_standard_calculator():
        UiActions.click(page.desktop_side_nav.get_open_side_panel())
        UiActions.click(page.desktop_side_nav.get_standard_calculator())
