from selenium.webdriver.common.by import By

open_side_panel = (By.XPATH, "//*[@AutomationId='TogglePaneButton']")
time_calculator = (By.XPATH, "//*[@AutomationId='Time']")
standard_calculator = (By.XPATH, "//*[@AutomationId='Standard']")


class SideNavPage:
    def __init__(self, driver):
        self.driver = driver

    def get_open_side_panel(self):
        return self.driver.find_element(open_side_panel[0], open_side_panel[1])

    def get_time_calculator(self):
        return self.driver.find_element(time_calculator[0], time_calculator[1])

    def get_standard_calculator(self):
        return self.driver.find_element(standard_calculator[0], standard_calculator[1])


