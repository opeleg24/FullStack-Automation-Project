from selenium.webdriver.common.by import By

minutes = (By.XPATH, "//*[@AutomationId='Value1']")
hours = (By.XPATH, "//*[@AutomationId='Value2']")


class TimePage:
    def __init__(self, driver):
        self.driver = driver

    def get_minutes(self):
        return self.driver.find_element(minutes[0], minutes[1])

    def get_hours(self):
        return self.driver.find_element(hours[0], hours[1])