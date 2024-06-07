from selenium.webdriver.common.by import By

title = (By.XPATH, "//*[@text='Unit Converter App']")
header_description = (By.XPATH, "//*[contains(text(), 'Metric-Conversions.')]")
main_page_description = (By.XPATH, "//*[contains(text(), 'This is a new app')]")
bottom_page_description = (By.XPATH, "//*[contains(text(), 'If you like')]")


class AboutPage:
    def __init__(self, driver):
        self.driver = driver

    def get_title(self):
        return self.driver.find_element(title[0], title[1])

    def get_header_description(self):
        return self.driver.find_element(header_description[0], header_description[1])

    def get_main_page_description(self):
        return self.driver.find_element(main_page_description[0], main_page_description[1])

    def get_bottom_description(self):
        return self.driver.find_element(bottom_page_description[0], bottom_page_description[1])
