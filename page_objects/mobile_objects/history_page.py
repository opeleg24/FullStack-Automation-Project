from selenium.webdriver.common.by import By

history_conversion = (By.XPATH, "//*[@text='Minutes to Seconds']")
delete_history_conversion = (By.XPATH, "//*[@id='history_delete_button']")


class HistoryPage:
    def __init__(self, driver):
        self.driver = driver

    def get_history_conversion(self):
        return self.driver.find_element(history_conversion[0], history_conversion[1])

    def get_delete_history_conversion(self):
        return self.driver.find_element(delete_history_conversion[0], delete_history_conversion[1])
