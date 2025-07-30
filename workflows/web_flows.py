import random
import time

import allure
from smart_assertions import soft_assert, verify_expectations

from extentions.ui_actions import UiActions
import utilities.manage_pages as page
import test_cases.conftest as conf
from extentions.verifications import Verifications
from utilities.common_ops import read_csv, get_data, read_json_file


class WebFlows:
    ####################################################################################################################
    # Function Name:verify_top_title
    # Function Description: This function verifies the site title using smart assertions
    # it extracts the site title from the top nav bar and compares it to the expected value ('TEL AVIV HOTEL')
    ####################################################################################################################
    @staticmethod
    @allure.step("Verify site title using smart assertions")
    def verify_top_title():
        Verifications.verify_soft_assert_equals(UiActions.get_text(page.web_top_nav.get_home_button()),
                                                'TEL AVIV HOTEL')

    ####################################################################################################################
    # Function Name:verify_site_basic_information
    # Function Description: This function verifies the site basic information (site address title & description)
    # using smart assertions it extracts the site basic information from the top nav bar and compares it to the
    # expected values
    # ('Tel Aviv 130 Street, Tel Aviv', 'TEL AVIV BUSINESSES HOTEL', 'Luxurious Hotel designed for businesses')
    # I used a for loop to iterate over the dictionary and compare the values to the expected values
    # using enumerate to get the index of the expected values
    ####################################################################################################################
    @staticmethod
    @allure.step("Verify site basic information (site address and site header information) using smart assertions")
    def verify_site_basic_information():
        site_basic_information = {
            'site_address': UiActions.get_text(page.web_top_header.get_top_header_address()),
            'site_title': UiActions.get_text(page.web_top_header.get_top_header_title()),
            'site_description': UiActions.get_text(
                page.web_top_header.get_top_header_description())}
        site_expected_data = ["Tel Aviv 130 Street, Tel Aviv", "TEL AVIV BUSINESSES HOTEL",
                              "Luxurious Hotel designed for businesses"]
        for i, (key, value) in enumerate(site_basic_information.items()):
            Verifications.verify_soft_assert_equals(value, site_expected_data[i])
        verify_expectations()

    ####################################################################################################################
    # Function Name:verify_social_links
    # Function Description: This function verifies the social links direct to the correct social media page
    # using smart assertions it clicks on the social link, saves the current link and compares it to the expected link
    # Function Parameters: link_name, link_expected
    ####################################################################################################################
    @staticmethod
    @allure.step(
        "Clicking on top nav Social Link and verifying it's directing to the correct page (using soft assertion)")
    def verify_social_links(link_name, link_expected):
        UiActions.click(page.web_top_header.get_top_header_social_link(link_name))
        link_current = conf.driver.current_url
        Verifications.verify_equals(link_current, link_expected)

    ####################################################################################################################
    # Function Name:happy_flow_send_hotel_form
    # Function Description: This function fills in all the details in the hotel form and submits the form.
    # it inputs values (generate random values using the faker library).
    # Form name (input), Form email (input), Form adult selector (dropdown), Form children selector (dropdown),
    # Radio buttons type room (radio buttons), Check boxes favorite activitys (check boxes), Text area comments (input)
    ####################################################################################################################
    @staticmethod
    @allure.step("Filling in all the details in the form")
    def happy_flow_send_hotel_form():
        UiActions.click(page.web_top_nav.get_hotel_form_link())
        UiActions.clear_text(page.web_hotel_form.get_form_name())
        UiActions.update_text(page.web_hotel_form.get_form_name(), conf.faker.name())
        UiActions.clear_text(page.web_hotel_form.get_form_email())
        UiActions.update_text(page.web_hotel_form.get_form_email(), conf.faker.email())
        UiActions.select_option(page.web_hotel_form.get_form_adult_selector(), str(random.randint(1, 2)))
        UiActions.select_option(page.web_hotel_form.get_form_children_selector(), str(random.randint(0, 2)))
        UiActions.click(page.web_hotel_form.get_radio_buttons_type_room()[random.randint(0, 2)])
        UiActions.click(page.web_hotel_form.get_check_boxes_favorite_activitys()[random.randint(0, 2)])
        UiActions.update_text(page.web_hotel_form.get_text_area_comments(), conf.faker.sentence())
        UiActions.click(page.web_hotel_form.get_submit_button())

    ####################################################################################################################
    # Function Name:verify_send_form_success_message
    # Function Description: This function verifies the success messages appears after submitting the form
    # using smart assertions it extracts the success messages from the form and compares them to the expected values
    # ('Thank you for your submission!', 'Your form has been submitted successfully.')
    # Function Parameters: success_message_first_row, success_message_second_row
    ####################################################################################################################

    @staticmethod
    @allure.step("Verifying success message appears after submitting the form (using soft assertion)")
    def verify_send_form_success_message(success_message_first_row, success_message_second_row):
        Verifications.verify_soft_assert_equals(UiActions.get_text(page.web_hotel_form.get_success_message_first_row()),
                                                success_message_first_row)
        Verifications.verify_soft_assert_equals(
            UiActions.get_text(page.web_hotel_form.get_success_message_second_row()), success_message_second_row)
        verify_expectations()

    ####################################################################################################################
    # Function Name:negative_testing_send_hotel_form_mandatory_fields
    # Function Description: This function fills in the form without filling the mandatory fields (name and email)
    # and submits the form.
    # testing that error messages appears beneath the inputs (name and email) after submitting the form without filling
    # the mandatory fields
    # it inputs values (generate random values using the faker library).
    # Form adult selector (dropdown), Form children selector (dropdown),
    # Radio buttons type room (radio buttons), Check boxes favorite activitys (check boxes), Text area comments (input)
    ####################################################################################################################

    @staticmethod
    @allure.step("Filling in the form without filling the mandatory fields (name and email) and submitting the form")
    def negative_testing_send_hotel_form_mandatory_fields():
        UiActions.click(page.web_top_nav.get_hotel_form_link())
        UiActions.select_option(page.web_hotel_form.get_form_adult_selector(), str(random.randint(1, 2)))
        UiActions.select_option(page.web_hotel_form.get_form_children_selector(), str(random.randint(0, 2)))
        UiActions.click(page.web_hotel_form.get_radio_buttons_type_room()[random.randint(0, 2)])
        UiActions.click(page.web_hotel_form.get_check_boxes_favorite_activitys()[random.randint(0, 2)])
        UiActions.update_text(page.web_hotel_form.get_text_area_comments(), conf.faker.sentence())
        UiActions.click(page.web_hotel_form.get_submit_button())

    ####################################################################################################################
    # Function Name:verify_mandatory_fields_error_message
    # Function Description: This function runs in a loop and verifies that error messages appears beneath the inputs
    # (name and email)
    # it extract the error messages from the form and compares them to the expected value ('This field is required.')
    ####################################################################################################################

    @staticmethod
    @allure.step(
        "Verifying error messages appears,beneath the inputs (name and email) after submitting the form without filling the mandatory fields (using soft assertion)")
    def verify_mandatory_fields_error_message():
        for error_message in page.web_hotel_form.get_error_message_field_required():
            Verifications.verify_soft_assert_equals(UiActions.get_text(error_message), 'This field is required.')
        verify_expectations()

    ####################################################################################################################
    # Function Name:negative_testing_send_hotel_form_email_field
    # Function Description: This function fills in the form with an invalid email & name input and submits the form.
    # using (faker library) to generate random values for the inputs.
    ####################################################################################################################
    @staticmethod
    @allure.step("Filling in the form with an invalid email input and submitting the form")
    def negative_testing_send_hotel_form_email_field():
        UiActions.click(page.web_top_nav.get_hotel_form_link())
        UiActions.clear_text(page.web_hotel_form.get_form_name())
        UiActions.update_text(page.web_hotel_form.get_form_name(), conf.faker.name())
        UiActions.clear_text(page.web_hotel_form.get_form_email())
        UiActions.update_text(page.web_hotel_form.get_form_email(), conf.faker.name())
        UiActions.click(page.web_hotel_form.get_submit_button())

    ####################################################################################################################
    # Function Name:verify_email_error_message
    # Function Description: This function verifies that error messages appears beneath the email input after submitting
    # the form with an invalid email input
    # it extracts the error messages from the form and compares them to the expected value ('Please enter a valid email
    # address.')
    # using smart assertions to verify the error message
    ####################################################################################################################
    @staticmethod
    @allure.step(
        "Verifying error message appears beneath the email input after submitting the form with an invalid email input (using soft assertion)")
    def verify_email_error_message():
        Verifications.verify_soft_assert_equals(UiActions.get_text(page.web_hotel_form.get_error_message_email_field()),
                                                'Please enter a valid email address.')
        verify_expectations()

    ####################################################################################################################
    # Function Name:verify_top_nav_links_to_pages
    # Function Description: This function clicks on each one of the top nav links, saves the current page title and
    # compares it to the expected page title
    # Function Parameters: page_name, page_expected
    ####################################################################################################################
    @staticmethod
    @allure.step(
        "Clicking each one of the top nav links and verifying it's directing to the correct page (using soft assertion)")
    def verify_top_nav_links_to_pages(page_name, page_expected):
        UiActions.click(page.web_top_nav.get_placeholder_link(page_name))
        title = UiActions.get_text(page.web_top_nav.get_page_title())
        Verifications.verify_soft_assert_equals(title, page_expected)

    ####################################################################################################################
    # Function Name:return_to_home_page
    # Function Description: This function navigates back to the home page
    # it extracts the home page url from the data.xml file and navigates to it
    ####################################################################################################################
    def return_to_home_page(self):
        self.driver.get(get_data('Url'))

 #######################################################################################################################
    # Variable Name:data_001
    # Variable Description: it reads the CSV file (CSV_Location_Links) and extracts the data from it
    # It extracts the links of the social media pages from the Excel file,
    # Variable Name:testDataLinks
    ####################################################################################################################
data_001 = read_csv(get_data('CSV_Location_Links'))
testDataLinks = [
    (data_001[1][0], data_001[1][1]),
    (data_001[2][0], data_001[2][1]),
    (data_001[3][0], data_001[3][1])
]
#######################################################################################################################
# Variable Name: data_002
# Variable Description: it reads the CSV file (CSV_Location_Pages) and extracts the data from it
# It extracts the Pages of the social media pages from the Excel file
# Variable Name: testDataPages
#######################################################################################################################
data_002 = read_csv(get_data('CSV_Location_Pages'))
testDataPages = [(data_002[1][0], data_002[1][1]),
                 (data_002[2][0], data_002[2][1]),
                 (data_002[3][0], data_002[3][1])
                 ]
#######################################################################################################################
# Variable Name: successMessages
# Variable Description: it reads the JSON file (JSON_Location_Success_MSG) and extracts the data from it
# It extracts the success messages that appears after submitting the form
#######################################################################################################################
successMessages = read_json_file(get_data('JSON_Location_Success_MSG'))