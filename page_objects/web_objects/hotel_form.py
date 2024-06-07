from selenium.webdriver.common.by import By

form_name = (By.NAME, 'wpforms[fields][0]')
form_email = (By.NAME, 'wpforms[fields][1]')
form_adult_selector = (By.ID, 'wpforms-324-field_6')
form_children_selector = (By.ID, 'wpforms-324-field_7')
radio_buttons_type_room = (By.CSS_SELECTOR, '[id="wpforms-324-field_15"] input')
check_boxes_favorite_activitys = (By.CSS_SELECTOR, '[id="wpforms-324-field_11"] input')
text_area_comments = (By.ID, 'wpforms-324-field_2')
submit_button = (By.ID, 'wpforms-submit-324')
success_message_first_row = (By.CSS_SELECTOR, 'div[id="wpforms-confirmation-324"] p:first-child')
success_message_second_row = (By.CSS_SELECTOR, 'div[id="wpforms-confirmation-324"] p:last-child')
error_message_field_required = (By.CSS_SELECTOR, '[aria-label="Error message"]')
error_message_email_field = (By.ID, 'wpforms-324-field_1-error')


class HotelForm:
    def __init__(self, driver):
        self.driver = driver

    def get_form_name(self):
        return self.driver.find_element(form_name[0], form_name[1])

    def get_form_email(self):
        return self.driver.find_element(form_email[0], form_email[1])

    def get_form_adult_selector(self):
        return self.driver.find_element(form_adult_selector[0], form_adult_selector[1])

    def get_form_children_selector(self):
        return self.driver.find_element(form_children_selector[0], form_children_selector[1])

    def get_radio_buttons_type_room(self):
        return self.driver.find_elements(radio_buttons_type_room[0], radio_buttons_type_room[1])

    def get_check_boxes_favorite_activitys(self):
        return self.driver.find_elements(check_boxes_favorite_activitys[0], check_boxes_favorite_activitys[1])

    def get_text_area_comments(self):
        return self.driver.find_element(text_area_comments[0], text_area_comments[1])

    def get_submit_button(self):
        return self.driver.find_element(submit_button[0], submit_button[1])

    def get_error_message_field_required(self):
        return self.driver.find_elements(error_message_field_required[0], error_message_field_required[1])

    def get_error_message_email_field(self):
        return self.driver.find_element(error_message_email_field[0], error_message_email_field[1])

    def get_success_message_first_row(self):
        return self.driver.find_element(success_message_first_row[0], success_message_first_row[1])

    def get_success_message_second_row(self):
        return self.driver.find_element(success_message_second_row[0], success_message_second_row[1])
