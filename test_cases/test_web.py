import os
import time

import allure
import pytest

import page_objects
import page_objects.web_objects.hotel_form as hotel_form
import utilities.manage_pages as page
from extentions.ui_actions import UiActions
from extentions.verifications import Verifications
from page_objects.web_objects import hotel_form
from utilities.common_ops import wait, For, get_data

import test_cases.conftest as conf


from workflows import web_flows
from workflows.web_flows import WebFlows


@pytest.mark.usefixtures('init_web_driver')
class Test_Web:
    @allure.title("Test01: Verify site title and basic information")
    @allure.description("This test verifies the site title and basic information that appears on the site header "
                        "section")
    def test_site_top_header_and_nav_information(self):
        WebFlows.verify_top_title()
        WebFlows.verify_site_basic_information()

    @allure.title("Test02: Verify site top nav social links")
    @allure.description("This test verifies the social links direct to the correct social media page")
    @pytest.mark.parametrize("link_name,link_expected", web_flows.testDataLinks)
    def test_top_header_social_links(self, link_name, link_expected):
        conf.driver.get('https://mpeleg90.com/omri/')
        WebFlows.verify_social_links(link_name, link_expected)

    @allure.title("Test03: Verify site top nav links to pages")
    @allure.description("This test verifies the top nav links direct to the correct pages plus testing home button is "
                        "clickable and directs to the home page")
    @pytest.mark.parametrize("page_name,page_expected", web_flows.testDataPages)
    def test_pages_links(self, page_name, page_expected):
        WebFlows.verify_top_nav_links_to_pages(page_name, page_expected)

    @allure.title("Test04: Verify successful submission of hotel form")
    @allure.description(
        "This test verifies the successful submission of the hotel form by filling all the fields in the form.")
    def test_happy_flow_send_hotel_form(self):
        WebFlows.happy_flow_send_hotel_form()
        wait(For.ELEMENT_EXISTS, page_objects.web_objects.hotel_form.success_message_first_row)
        WebFlows.verify_send_form_success_message(web_flows.successMessages["successMessageFirstRow"],
                                                  web_flows.successMessages["successMessageSecondRow"])

    @allure.title("Test05: Verify negative testing of hotel form: Mandatory fields")
    @allure.description("This test verifies the negative testing of the hotel form by sending the form without filling "
                        "the mandatory fields")
    def test_negative_testing_send_hotel_form_mandatory_fields(self):
        WebFlows.negative_testing_send_hotel_form_mandatory_fields()
        WebFlows.verify_mandatory_fields_error_message()

    @allure.title("Test06: Verify negative testing of hotel form: Email field")
    @allure.description(
        "This test verifies the negative testing of the hotel form by sending the form with an invalid email input")
    def test_negative_testing_send_hotel_form_email_field(self):
        WebFlows.negative_testing_send_hotel_form_email_field()
        WebFlows.verify_email_error_message()

    @allure.title("Test07: Visual Testing: Blog pages UI design")
    @allure.description(
        "This test verifies the blog pages (first and second page) UI design using Applitools visual testing")
    @pytest.mark.skipif(get_data('Execute_Applitools').lower() == 'no', reason="Applitools is not enabled")
    def test_visual_testing(self):
        conf.eyes.open(conf.driver, "Blog Pages", "Blog Pages UI Design")
        UiActions.click(page.web_top_nav.get_blog_page_link())
        conf.eyes.check_window("Blog Page first page")
        UiActions.click(page.web_blog_pages.get_pagination_next_page())
        conf.eyes.check_window("Blog Pages second page")

    def teardown_method(self):
        WebFlows.return_to_home_page(self)