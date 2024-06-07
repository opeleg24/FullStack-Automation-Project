from selenium.webdriver.common.by import By

About = (By.XPATH, "//*[@text='About']")
Favorites = (By.XPATH, "//*[@text='Favorites']")
History = (By.XPATH, "//*[@text='History']")
Convert = (By.XPATH, "//*[@text='Convert']")


class MainNav:
    def __init__(self, driver):
        self.driver = driver

    def get_about(self):
        return self.driver.find_element(About[0], About[1])

    def get_favorites(self):
        return self.driver.find_element(Favorites[0], Favorites[1])

    def get_history(self):
        return self.driver.find_element(History[0], History[1])

    def get_convert(self):
        return self.driver.find_element(Convert[0], Convert[1])


