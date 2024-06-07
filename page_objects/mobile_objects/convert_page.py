from selenium.webdriver.common.by import By

time = (By.XPATH, "//*[@text='Time']")
minutes = (By.XPATH, "//*[@id='unit_row_text']")
seconds = (By.XPATH, "//*[@id='unit_row_text']")
right_side_input = (By.XPATH, "//*[@text='min']")
convert_button = (By.XPATH, "//*[@id='button_convert']")
result_display = (By.XPATH, "//*[@id='question_and_answer_text']")
formula_button = (By.XPATH, "//*[@id='show_formula_button']")
formula_text = (By.XPATH, "//*[@id='formula_view']")
add_to_favorites = (By.XPATH, "//*[@id='add_favorites_button']")
search_input = (By.XPATH, "//*[@id='search']")
swap_units_button = (By.XPATH, "//*[@id='swap_units_button']")
swap_input = (By.XPATH, "//*[@id='arg1']")
one = (By.XPATH, "//*[@text='1']")
two = (By.XPATH, "//*[@text='2']")
three = (By.XPATH, "//*[@text='3']")
four = (By.XPATH, "//*[@text='4']")
five = (By.XPATH, "//*[@text='5']")
six = (By.XPATH, "//*[@text='6']")
seven = (By.XPATH, "//*[@text='7']")
eight = (By.XPATH, "//*[@text='8']")
nine = (By.XPATH, "//*[@text='9']")
zero = (By.XPATH, "//*[@text='0']")
rate_the_app = (By.XPATH, "//*[@text='Please rate this app']")


class ConvertPage:
    def __init__(self, driver):
        self.driver = driver

    def get_time(self):
        return self.driver.find_element(time[0], time[1])

    def get_minutes(self):
        return self.driver.find_element(minutes[0], minutes[1])

    def get_seconds(self):
        return self.driver.find_element(seconds[0], seconds[1])

    def get_right_side_input(self):
        return self.driver.find_element(right_side_input[0], right_side_input[1])

    def get_convert_button(self):
        return self.driver.find_element(convert_button[0], convert_button[1])

    def get_result_display(self):
        return self.driver.find_element(result_display[0], result_display[1])

    def get_formula_button(self):
        return self.driver.find_element(formula_button[0], formula_button[1])

    def get_formula_text(self):
        return self.driver.find_element(formula_text[0], formula_text[1])

    def get_add_to_favorites_button(self):
        return self.driver.find_element(add_to_favorites[0], add_to_favorites[1])

    def get_search_input(self):
        return self.driver.find_element(search_input[0], search_input[1])

    def get_swap_units_button(self):
        return self.driver.find_element(swap_units_button[0], swap_units_button[1])

    def get_swap_input(self):
        return self.driver.find_element(swap_input[0], swap_input[1])

    def get_one(self):
        return self.driver.find_element(one[0], one[1])

    def get_two(self):
        return self.driver.find_element(two[0], two[1])

    def get_three(self):
        return self.driver.find_element(three[0], three[1])

    def get_four(self):
        return self.driver.find_element(four[0], four[1])

    def get_five(self):
        return self.driver.find_element(five[0], five[1])

    def get_six(self):
        return self.driver.find_element(six[0], six[1])

    def get_seven(self):
        return self.driver.find_element(seven[0], seven[1])

    def get_eight(self):
        return self.driver.find_element(eight[0], eight[1])

    def get_nine(self):
        return self.driver.find_element(nine[0], nine[1])

    def get_zero(self):
        return self.driver.find_element(zero[0], zero[1])

    def get_rate_the_app(self):
        return self.driver.find_element(rate_the_app[0], rate_the_app[1])
