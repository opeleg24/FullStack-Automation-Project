from selenium.webdriver.common.by import By

hotel_form_link = (By.LINK_TEXT, 'Hotel Form')
blog_page_link = (By.LINK_TEXT, 'Blog')
placeholder_link = (By.LINK_TEXT, 'placeholder')
page_title = (By.CSS_SELECTOR, 'h1')
home_button = (By.CSS_SELECTOR, '[rel = "home"]')


class TopNav:
    def __init__(self, driver):
        self.driver = driver

    def get_hotel_form_link(self):
        return self.driver.find_element(hotel_form_link[0], hotel_form_link[1])

    def get_page_title(self):
        return self.driver.find_element(page_title[0], page_title[1])

    def get_home_button(self):
        return self.driver.find_element(home_button[0], home_button[1])

    def get_placeholder_link(self, page_name):
        return self.driver.find_element(placeholder_link[0], placeholder_link[1].replace('placeholder', str(page_name)))

    def get_blog_page_link(self):
        return self.driver.find_element(blog_page_link[0], blog_page_link[1])
