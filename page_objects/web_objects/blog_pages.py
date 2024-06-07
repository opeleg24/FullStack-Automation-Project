from selenium.webdriver.common.by import By

pagination_next_page = (By.CSS_SELECTOR, 'a[class="next page-numbers"]')


class BlogPages:
    def __init__(self, driver):
        self.driver = driver

    def get_pagination_next_page(self):
        return self.driver.find_element(pagination_next_page[0], pagination_next_page[1])
