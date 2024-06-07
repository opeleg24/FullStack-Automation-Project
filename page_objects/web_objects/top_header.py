from selenium.webdriver.common.by import By

top_header_address = (By.CLASS_NAME, 'sq-top-left-header')
title = (By.CSS_SELECTOR, '[class*="sq-slide-cap-title"]')
description = (By.CSS_SELECTOR, '[class*="sq-slide-cap-desc"]')
top_header_social_link = (By.CSS_SELECTOR, 'a[href="placeholder_link"]')


class TopHeader:
    def __init__(self, driver):
        self.driver = driver

    def get_top_header_address(self):
        return self.driver.find_element(top_header_address[0], top_header_address[1])

    def get_top_header_title(self):
        return self.driver.find_element(title[0], title[1])

    def get_top_header_description(self):
        return self.driver.find_element(description[0], description[1])

    def get_top_header_social_link(self, link_name):
        return self.driver.find_element(top_header_social_link[0],
                                        top_header_social_link[1].replace('placeholder_link', str(link_name)))
