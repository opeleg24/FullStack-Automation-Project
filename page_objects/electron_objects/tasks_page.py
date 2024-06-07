from selenium.webdriver.common.by import By

create_input = (By.CSS_SELECTOR, "input[placeholder='Create a task']")
headline_date = (By.CSS_SELECTOR, "[class*='dateFormatted']")
task_name_label = (By.CSS_SELECTOR, "[class='textWrapper_X9gil'] label")
svg_circle_checkbox = (By.CSS_SELECTOR, "[class='toggleIconsWrapper_2kpi8'] svg")
check_box_sign_element = (By.CSS_SELECTOR, "[class='toggleIconsWrapper_2kpi8'] svg path")
pen_color_select_button_list = (By.CSS_SELECTOR, "[class='icons_MDNeU'] svg")
pen_color_box_selection = (By.CSS_SELECTOR, "[aria-label='Color:color']")
save_button = (By.CSS_SELECTOR, "[class='wrapper_1SRLB']")
header = (By.CSS_SELECTOR, "[class='wrapper_2r1C1']")

arrow_down_color_filter_button = (By.CSS_SELECTOR, "[class='downArrowIcon_3Zu5N']")
color_box_selection = (By.CSS_SELECTOR, "[style='color']")
filter_arrow = (By.CLASS_NAME, "toggleVisibilityPanel_hNPyc")
color_filter_box = (
    By.CSS_SELECTOR, "div[class='wrapper_3Kpfj tagsWrapper_jJPK-'] [style='color']")
color_of_task = (By.CLASS_NAME, "tag_3u4he")
date_display_filter = (By.CSS_SELECTOR, "[class*='dateLabel_7OVx9']")
status_display_filter = (By.CSS_SELECTOR, "[class*='statusWrapper_fkjww'] label")
no_color_box_filter = (By.CSS_SELECTOR, "[class*='hasNoTag_3ftX1']")
no_task_message = (By.CSS_SELECTOR, "[class='emptyState_3FwtK']")


class TasksPage:
    def __init__(self, driver):
        self.driver = driver

    def get_create(self):
        return self.driver.find_element(create_input[0], create_input[1])

    def get_headline_date(self):
        return self.driver.find_element(headline_date[0], headline_date[1])

    def get_task_name_label(self):
        return self.driver.find_element(task_name_label[0], task_name_label[1])

    def get_svg_circle_checkbox(self):
        return self.driver.find_element(svg_circle_checkbox[0], svg_circle_checkbox[1])

    def get_check_box_sign_element(self):
        return self.driver.find_element(check_box_sign_element[0], check_box_sign_element[1])

    def get_pen_color_select_button_list(self):
        return self.driver.find_elements(pen_color_select_button_list[0], pen_color_select_button_list[1])

    def get_pen_color_box_selection(self, color_selected):
        return self.driver.find_element(pen_color_box_selection[0], pen_color_box_selection[1].replace('color',
                                                                                                       str(color_selected)))

    def get_save_button(self):
        return self.driver.find_element(save_button[0], save_button[1])

    def get_header(self):
        return self.driver.find_element(header[0], header[1])

    def get_arrow_down_color_filter_button(self):
        return self.driver.find_element(arrow_down_color_filter_button[0], arrow_down_color_filter_button[1])

    def get_color_box_selection(self, color_selected):
        return self.driver.find_element(color_box_selection[0], color_box_selection[1].replace('color',
                                                                                               str(color_selected)))

    def get_filter_arrow(self):
        return self.driver.find_element(filter_arrow[0], filter_arrow[1])

    def get_color_filter_box(self, color_filter_selected):
        return self.driver.find_element(color_filter_box[0], color_filter_box[1].replace('color',
                                                                                         str(color_filter_selected)))

    def get_color_of_task(self):
        return self.driver.find_element(color_of_task[0], color_of_task[1])

    def get_no_color_box_filter(self):
        return self.driver.find_element(no_color_box_filter[0], no_color_box_filter[1])

    def get_no_task_message(self):
        return self.driver.find_element(no_task_message[0], no_task_message[1])
