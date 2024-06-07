import time

from selenium.common.exceptions import TimeoutException, NoSuchElementException

import page_objects
from extentions.mobile_actions import MobileActions
import utilities.manage_pages as page
import test_cases.conftest as conf
from utilities.common_ops import get_data, read_json_file, read_csv, Direction, wait, For
import allure


class MobileFlows:

    ####################################################################################################################
    # Function Name: about_us_header_page_description_details
    # Function Description: Get header description, extract the text and return the text value
    ####################################################################################################################
    @staticmethod
    @allure.step("Get header description")
    def about_us_header_page_description_details():
        return MobileActions.get_text(page.mobile_about_page.get_header_description())

    ####################################################################################################################
    # Function Name: about_us_main_page_description_details
    # Function Description: Get main page description, extract the text and return the text value
    ####################################################################################################################
    @staticmethod
    @allure.step("Get main page description")
    def about_us_main_page_description_details():
        return MobileActions.get_text(page.mobile_about_page.get_main_page_description())

    ####################################################################################################################
    # Function Name: about_us_bottom_page_description_details
    # Function Description: Get bottom page description, extract the text and return the text value
    ####################################################################################################################
    @staticmethod
    @allure.step("Get bottom page description")
    def about_us_bottom_page_description_details():
        return MobileActions.get_text(page.mobile_about_page.get_bottom_description())

    ####################################################################################################################
    # Function Name: about_us_bottom_page_description_details
    # Function Description: Navigates to the convert page, time sections and selects option converts minutes to seconds
    # for each tap selection it taps the element 1 time
    ####################################################################################################################

    @staticmethod
    @allure.step("Time conversion minutes to seconds")
    def time_conversion_minutes_to_seconds(minutes, seconds):
        MobileActions.tap(page.mobile_main_nav_section.get_convert(), 1)
        MobileActions.tap(page.mobile_convert_page.get_time(), 1)
        MobileActions.update_text(page.mobile_convert_page.get_search_input(), minutes)
        MobileActions.tap(page.mobile_convert_page.get_minutes(), 1)
        MobileActions.update_text(page.mobile_convert_page.get_search_input(), seconds)
        MobileActions.tap(page.mobile_convert_page.get_seconds(), 1)

    ####################################################################################################################
    # Function Name: time_conversion_swap_units_seconds_to_minutes
    # Function Description: Selects option converts seconds to minutes
    ####################################################################################################################
    @staticmethod
    @allure.step("Time conversion swap units - seconds to minutes")
    def time_conversion_swap_units_seconds_to_minutes():
        wait(For.ELEMENT_EXISTS, page_objects.mobile_objects.convert_page.right_side_input)
        MobileFlows.swipe_screen(Direction.UP)
        MobileFlows.swipe_screen(Direction.UP)
        MobileActions.tap(page.mobile_convert_page.get_swap_units_button(), 1)

    ####################################################################################################################
    # Function Name: convert_time
    # Function Description: takes in minutes variable and enters the value in the right side input field
    # then calculates the conversion and returns the result, the result is split and the number is extracted
    # Function return: result_number - the number extracted from the result
####################################################################################################################


    @staticmethod
    @allure.step("Convert time - minutes to seconds")
    def convert_time(minutes):
        MobileActions.tap(page.mobile_convert_page.get_right_side_input(), 1)
        MobileFlows.calculate_conversion_flow(minutes)
        result = MobileActions.get_text(page.mobile_convert_page.get_result_display())
        result_number = result.split('=')[1].split()[0]
        return result_number

    ####################################################################################################################
    # Function Name: convert_time_swap
    # Function Description: convert form original selection minutes convert to seconds to seconds convert to minutes
    # then calculates the conversion and returns the result, the result is split and the number is extracted
    # Function return: result_number - the number extracted from the result
    ####################################################################################################################
    @staticmethod
    @allure.step("Convert time - Time conversion swap units - seconds to minutes")
    def convert_time_swap(seconds):
        MobileActions.tap(page.mobile_convert_page.get_swap_input(), 1)
        number = seconds.split('s')[0]
        MobileFlows.calculate_conversion_flow(number)
        result = MobileActions.get_text(page.mobile_convert_page.get_result_display())
        result_number = result.split('=')[1].split()[0].split('min')[0]
        return result_number

    ####################################################################################################################
    # Function Name: calculate_conversion_flow
    # Function Description: This function takes in a value (numer or operator) and taps the element based on the value
    # then taps the convert button (taps the element 1 time)
    ####################################################################################################################
    @staticmethod
    @allure.step("Calculate conversion")
    def calculate_conversion_flow(value):
        for i in value:
            MobileFlows.calculator_conversion_click(i)
        MobileActions.tap(page.mobile_convert_page.get_convert_button(), 1)

    ####################################################################################################################
    # Function Name: calculator_conversion_click
    # Function Description: This function takes in a value (numer or operator) and taps the element based on the value
    # taps the element 1 time
    ####################################################################################################################

    @staticmethod
    def calculator_conversion_click(value):
        if value == '1':
            MobileActions.tap(page.mobile_convert_page.get_one(), 1)
        elif value == '2':
            MobileActions.tap(page.mobile_convert_page.get_two(), 1)
        elif value == '3':
            MobileActions.tap(page.mobile_convert_page.get_three(), 1)
        elif value == '4':
            MobileActions.tap(page.mobile_convert_page.get_four(), 1)
        elif value == '5':
            MobileActions.tap(page.mobile_convert_page.get_five(), 1)
        elif value == '6':
            MobileActions.tap(page.mobile_convert_page.get_six(), 1)
        elif value == '7':
            MobileActions.tap(page.mobile_convert_page.get_seven(), 1)
        elif value == '8':
            MobileActions.tap(page.mobile_convert_page.get_eight(), 1)
        elif value == '9':
            MobileActions.tap(page.mobile_convert_page.get_nine(), 1)
        elif value == '0':
            MobileActions.tap(page.mobile_convert_page.get_zero(), 1)
        else:
            raise Exception("Invalid value" + value)

    ####################################################################################################################
    # Function Name: add_conversion_to_history
    # Function Description: Add conversion to history, then tap the history button
    # then get the text from the history conversion element and return the text
    # Function return: text_history - the text from the history conversion element
    ####################################################################################################################

    @staticmethod
    @allure.step("Add to history - time conversion minutes to seconds")
    def add_conversion_to_history(minutes, seconds):
        MobileFlows.time_conversion_minutes_to_seconds(minutes, seconds)
        MobileActions.tap(page.mobile_main_nav_section.get_history(), 1)
        text_history = MobileActions.get_text(page.mobile_history_page.get_history_conversion())
        return text_history

    ####################################################################################################################
    # Function Name: delete_time_conversion_minutes_to_seconds_from_history
    # Function Description: Tap the history button, then delete the history conversion
    ####################################################################################################################

    @staticmethod
    @allure.step("Delete history time conversion")
    def delete_time_conversion_minutes_to_seconds_from_history():
        MobileActions.tap(page.mobile_main_nav_section.get_history(), 1)
        MobileActions.tap(page.mobile_history_page.get_delete_history_conversion(), 1)
        MobileActions.tap(page.mobile_main_nav_section.get_history(), 1)

    ####################################################################################################################
    # Function Name: delete_time_conversion_minutes_to_seconds_from_favorites
    # Function Description: Tap the favorites button, then delete the favorite conversion
    ####################################################################################################################
    @staticmethod
    @allure.step("Delete favorite time conversion")
    def delete_time_conversion_minutes_to_seconds_from_favorites():
        MobileActions.tap(page.mobile_main_nav_section.get_favorites(), 1)
        MobileActions.tap(page.mobile_favorites_page.get_delete_favorite_conversion(), 1)
        MobileActions.tap(page.mobile_main_nav_section.get_favorites(), 1)

    ####################################################################################################################
    # Function Name: verify_delete_time_conversion_minutes_to_seconds_from_favorites
    # Function Description: save the element_appears variable as True, then try to wait for the element to appear
    # if the element does not appear, set the element_appears variable to False - return the element_appears variable
    # finally tap the convert button
    ####################################################################################################################
    @staticmethod
    @allure.step("Verify Delete favorite time conversion")
    def verify_delete_time_conversion_minutes_to_seconds_from_favorites():
        element_appears = True
        try:
            wait(For.ELEMENT_EXISTS, page_objects.mobile_objects.favorites_page.favorite_conversion)
        except TimeoutException as e:
            print(e)
            element_appears = False
        finally:
            MobileActions.tap(page.mobile_main_nav_section.get_convert(), 1)
        return element_appears

    ####################################################################################################################
    # Function Name: verify_delete_time_conversion_minutes_to_seconds_from_history
    # Function Description: save the element_appears variable as True, then try to wait for the element to appear
    # if the element does not appear, set the element_appears variable to False - return the element_appears variable
    # finally tap the convert button
    ####################################################################################################################

    @staticmethod
    @allure.step("Verify Delete history time conversion")
    def verify_delete_time_conversion_minutes_to_seconds_from_history():
        element_appears = True
        try:
            wait(For.ELEMENT_EXISTS, page_objects.mobile_objects.history_page.history_conversion)
        except TimeoutException as e:
            print(e)
            element_appears = False
        finally:
            MobileActions.tap(page.mobile_main_nav_section.get_convert(), 1)
        return element_appears

    ####################################################################################################################
    # Function Name: get_favorite_text_flow
    # Function Description: Tap the favorites button, then get the text from the favorite conversion element
    # and return the text
    # Function return: text_favorites - the text from the favorite conversion element
    ####################################################################################################################

    @staticmethod
    @allure.step("Get favorite text")
    def get_favorite_text_flow():
        MobileActions.tap(page.mobile_main_nav_section.get_favorites(), 1)
        text_favorites = MobileActions.get_text(page.mobile_favorites_page.get_favorite_conversion())
        return text_favorites

    ####################################################################################################################
    # Function Name: add_conversion_to_favorites
    # Function Description: Add conversion to favorites, then tap the add to favorites button
    ####################################################################################################################

    @staticmethod
    @allure.step("Add to favorites - time conversion minutes to seconds")
    def add_conversion_to_favorites(minutes, seconds):
        MobileFlows.time_conversion_minutes_to_seconds(minutes, seconds)
        wait(For.ELEMENT_EXISTS, page_objects.mobile_objects.convert_page.right_side_input)
        MobileFlows.swipe_screen(Direction.UP)
        wait(For.ELEMENT_EXISTS, page_objects.mobile_objects.convert_page.add_to_favorites)
        MobileActions.tap(page.mobile_convert_page.get_add_to_favorites_button(), 1)

    ####################################################################################################################
    # Function Name: swipe_screen
    # Function Description: Swipe screen in the direction specified
    # Function Parameters: direction, the direction to swipe the screen
    ####################################################################################################################

    @staticmethod
    @allure.step("Swipe screen")
    def swipe_screen(direction):
        width = conf.mobile_size['width']
        height = conf.mobile_size['height']

        start_x = None
        start_y = None
        end_x = None
        end_y = None

        if direction == 'left':
            start_x = width * 0.9
            end_x = width * 0.1
            start_y = end_y = height * 0.5

        elif direction == 'right':
            start_x = width * 0.1
            end_x = width * 0.9
            start_y = end_y = height * 0.5

        elif direction == 'up':
            start_y = height * 0.9
            end_y = height * 0.1
            start_x = end_x = width * 0.5

        elif direction == 'down':
            start_y = height * 0.1
            end_y = height * 0.9
            start_x = end_x = width * 0.5

        MobileActions.swipe(start_x, start_y, end_x, end_y, int(get_data('Swipe_Duration')))


#######################################################################################################################
# Variable Name: about_us_page_data
# Variable Description: Read the JSON file and store the data in the variable
# the JSON file contains the data for the About Us page, the main and bottom text
####################################################################################################################

about_us_page_data = read_json_file(get_data('JSON_Mobile_ABOUT_US_Page_Data'))
#######################################################################################################################
# Variable Name: testDataTime
# Variable Description: Read the CSV file and store the data in the variable
# the CSV file contains the data for the time conversion test
# the data is minutes convert to seconds
####################################################################################################################
time_data = read_csv(get_data('Mobile_Time_convert_Data'))
testDataTime = [
    (time_data[1][0], time_data[1][1]),
    (time_data[2][0], time_data[2][1]),
    (time_data[3][0], time_data[3][1])
]
#######################################################################################################################
# Variable Name: testDataTimeSwapData
# Variable Description: Read the CSV file and store the data in the variable
# the CSV file contains the data for the time conversion test
# the data is swapped from the original selection NOW ITS seconds convert to minutes
####################################################################################################################
testDataTimeSwapData = [
    (time_data[1][1], time_data[1][0]),
    (time_data[2][1], time_data[2][0]),
    (time_data[3][1], time_data[3][0])
]
