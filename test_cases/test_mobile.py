import time

import pytest
import allure
from smart_assertions import verify_expectations

from extentions.mobile_actions import MobileActions
from extentions.verifications import Verifications
from utilities.common_ops import Direction
from workflows import db_flows
import utilities.manage_pages as page
from workflows.mobile_flows import MobileFlows
from workflows import mobile_flows

conversion_formula_expected = "s =  min * 60"
conversion_text = "Minutes to Seconds"
search_minutes = "Minutes"
search_seconds = "Seconds"


@pytest.mark.usefixtures('init_mobile_driver')
class Test_Mobile:

    @allure.title("Test01: Test About Us Page header text")
    @allure.description("This test verifies the header text on the About Us page")
    def test_about_us_header_text(self):
        MobileActions.tap(page.mobile_main_nav_section.get_about(), 1)
        Verifications.verify_equals(MobileFlows.about_us_header_page_description_details(),
                                    mobile_flows.about_us_page_data['aboutUsPage']['headerDescription'])

    @allure.title("Test02: Test About Us Page main & bottom text")
    @allure.description("This test verifies the main & bottom text on the About Us page")
    def test_about_us_main_bottom_text(self):
        MobileActions.tap(page.mobile_main_nav_section.get_about(), 1)
        MobileFlows.swipe_screen(Direction.UP)
        Verifications.verify_soft_assert_equals(
            MobileFlows.about_us_main_page_description_details(),
            mobile_flows.about_us_page_data['aboutUsPage']['mainPageDescription'])
        Verifications.verify_soft_assert_equals(
            MobileFlows.about_us_bottom_page_description_details(),
            mobile_flows.about_us_page_data['aboutUsPage']['bottomPageDescription'])
        verify_expectations()

    @allure.title("Test03: Test Convert Time functionality")
    @allure.description("This test verifies the time conversion - Minutes convert to Seconds")
    @pytest.mark.parametrize("minutes,seconds", mobile_flows.testDataTime)
    def test_convert_time_hours_seconds(self, minutes, seconds):
        MobileFlows.time_conversion_minutes_to_seconds(search_minutes, search_seconds)
        convert_time_result = MobileFlows.convert_time(minutes)
        Verifications.verify_equals(seconds, convert_time_result)

    @allure.title("Test04: Test Convert Time - swap units functionality")
    @allure.description(
        "This test swaps the time units from original selection Minutes convert to Seconds to Seconds convert to Minutes")
    @pytest.mark.parametrize("seconds,minutes", mobile_flows.testDataTimeSwapData)
    def test_convert_time_swap_units(self, seconds, minutes):
        MobileFlows.time_conversion_minutes_to_seconds(search_minutes, search_seconds)
        MobileFlows.time_conversion_swap_units_seconds_to_minutes()
        convert_time_result = MobileFlows.convert_time_swap(seconds)
        Verifications.verify_equals(minutes, convert_time_result)

    @allure.title("Test05: Test conversion (Minutes convert to Seconds) added to favorites process")
    @allure.description("This test adds a conversion to favorites & verifies it is added successfully")
    def test_add_to_favorites(self):
        MobileFlows.add_conversion_to_favorites(search_minutes, search_seconds)
        actual_text_favorite = MobileFlows.get_favorite_text_flow()
        Verifications.verify_equals(conversion_text, actual_text_favorite)

    @allure.title("Test06: Test delete favorite conversion (Minutes convert to Seconds)")
    @allure.description(
        "This test verifies the favorite conversion (Minutes convert to Seconds) is deleted successfully")
    def test_delete_conversion_from_favorites(self):
        MobileFlows.delete_time_conversion_minutes_to_seconds_from_favorites()
        is_favorite_exist = MobileFlows.verify_delete_time_conversion_minutes_to_seconds_from_favorites()
        print(is_favorite_exist)
        Verifications.verify_not_true(is_favorite_exist)

    @allure.title("Test07: Test conversion (Minutes convert to Seconds) added to history process")
    @allure.description("This test adds a conversion to history & verifies it is added successfully")
    def test_add_to_history(self):
        actual_text_history = MobileFlows.add_conversion_to_history(search_minutes, search_seconds)
        Verifications.verify_equals(conversion_text, actual_text_history)

    @allure.title("Test08: Test delete history conversion")
    @allure.description(
        "This test verifies the history conversion (Minutes convert to Seconds) is deleted successfully")
    def test_delete_conversion_from_history(self):
        MobileFlows.delete_time_conversion_minutes_to_seconds_from_history()
        is_history_exist = MobileFlows.verify_delete_time_conversion_minutes_to_seconds_from_history()
        Verifications.verify_not_true(is_history_exist)
