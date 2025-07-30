from selenium.webdriver.common.by import By




class BlogPages:
    def __init__(self, driver):
        self.driver = driver
        self.pagination_next_page = (By.CSS_SELECTOR, 'a[class="next page-numbers"]')

    pagination_next_page = (By.CSS_SELECTOR, 'a[class="next page-numbers"]')

    def get_pagination_next_page(self):
        return self.driver.find_element(*self.pagination_next_page)
