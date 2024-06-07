from selenium.webdriver.common.by import By

favorite_conversion = (By.XPATH, "//*[@id='favorite_row_text']")
delete_favorite_conversion = (By.XPATH, "//*[@id='favorite_delete_button']")




class FavoritesPage:
    def __init__(self, driver):
        self.driver = driver

    def get_favorite_conversion(self):
        return self.driver.find_element(favorite_conversion[0], favorite_conversion[1])

    def get_delete_favorite_conversion(self):
        return self.driver.find_element(delete_favorite_conversion[0], delete_favorite_conversion[1])

