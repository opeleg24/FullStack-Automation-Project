import allure

from extentions.ui_actions import UiActions
import test_cases.conftest as conf


class MobileActions(UiActions):

    ####################################################################################################################
    # Function Name: tap
    # Description: This function is used to tap on the element
    # Input: elem - element on which tap action needs to be performed
    #        times - number of times tap action needs to be performed
    ####################################################################################################################
    @staticmethod
    @allure.step("Tapping element")
    def tap(elem, times):
        conf.action.tap(elem, times).perform()

    ####################################################################################################################
    # Function Name: swipe
    # Description: This function is used to swipe the screen
    # Input: start_x - starting x coordinate
    #        start_y - starting y coordinate
    #        end_x - ending x coordinate
    #        end_y - ending y coordinate
    #        duration - duration of swipe



    @staticmethod
    @allure.step("Swiping Screen")
    def swipe(start_x, start_y, end_x, end_y, duration):
        conf.driver.swipe(start_x, start_y, end_x, end_y, duration)

