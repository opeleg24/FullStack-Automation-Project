import time

import allure
import datetime
from selenium.webdriver.common.keys import Keys

import page_objects
import utilities.manage_pages as page
from extentions.ui_actions import UiActions
from utilities.common_ops import wait, For, wait_for_text


class ElectronFlows:
    ####################################################################################################################
    # Function Name: add_new_task
    # Function Description: This function sends text inside the creation task input field (task_name) and selects a color
    # for the task (color_selected). Finally, it targets the task input and uses the RETURN key to create the task
    # Function Parameters: task_name, color_selected
    ####################################################################################################################
    @staticmethod
    @allure.step("Add new task flow with color green")
    def add_new_task(task_name, color_selected):
        UiActions.update_text(page.electron_tasks_page.get_create(), task_name)
        UiActions.click(page.electron_tasks_page.get_arrow_down_color_filter_button())
        UiActions.click(page.electron_tasks_page.get_color_box_selection(color_selected))
        UiActions.click(page.electron_tasks_page.get_arrow_down_color_filter_button())
        UiActions.update_text(page.electron_tasks_page.get_create(), Keys.RETURN)

    ####################################################################################################################
    # Function Name: get_actual_task_name
    # Function Description: This function extracts the text of the task name label
    # Function return: task_name_actual - the text of the task name label
    ####################################################################################################################
    @staticmethod
    @allure.step("Get task name")
    def get_actual_task_name():
        task_name_actual = UiActions.get_text(page.electron_tasks_page.get_task_name_label())
        return task_name_actual

    ####################################################################################################################
    # Function Name: happy_flow_filter_by_color
    # Function Description: This function selects a color filter, its wait for text elements to appear, before selecting
    # the color filter. It then extracts the style attribute of the color filter box and returns it. Finally, it clicks
    # the filter arrow to close the filter box
    # Function Parameters: color_filter_selected
    # Function return: style_attribute - the style attribute of the color filter box

    @staticmethod
    @allure.step("Filter by color flow - happy flow")
    def happy_flow_filter_by_color(color_filter_selected):
        UiActions.click(page.electron_tasks_page.get_filter_arrow())
        wait_for_text(page_objects.electron_objects.tasks_page.date_display_filter, "Date:")
        wait_for_text(page_objects.electron_objects.tasks_page.status_display_filter, "Status:")
        UiActions.click(page.electron_tasks_page.get_color_filter_box(color_filter_selected))
        style_attribute = UiActions.get_attribute(page.electron_tasks_page.get_color_filter_box(color_filter_selected),
                                                  "style")
        UiActions.click(page.electron_tasks_page.get_filter_arrow())
        return style_attribute

    ####################################################################################################################
    # Function Name: negative_flow_filter_by_color
    # Function Description: This function selects a color filter, its wait for text elements to appear, before selecting
    # the color filter. Finally, it clicks the filter arrow to close the filter box. This function is used for negative
    # testing, we ultimately want to see no tasks displayed
    # Function Parameters: color_filter_selected
    ####################################################################################################################

    @staticmethod
    @allure.step("Filter by color flow - negative flow")
    def negative_flow_filter_by_color(color_filter_selected):
        UiActions.click(page.electron_tasks_page.get_filter_arrow())
        wait_for_text(page_objects.electron_objects.tasks_page.date_display_filter, "Date:")
        wait_for_text(page_objects.electron_objects.tasks_page.status_display_filter, "Status:")
        UiActions.click(page.electron_tasks_page.get_no_color_box_filter())
        UiActions.click(page.electron_tasks_page.get_color_filter_box(color_filter_selected))

    ####################################################################################################################
    # Function Name: get_no_tasks_message
    # Function Description: This function extracts the text of the no tasks message
    # Function return: no_task_message - the text of the no tasks message
    ####################################################################################################################
    @staticmethod
    @allure.step("Get no tasks message")
    def get_no_tasks_message():
        no_task_message = UiActions.get_text(page.electron_tasks_page.get_no_task_message())
        return no_task_message

    ####################################################################################################################
    # Function Name: get_color_of_task
    # Function Description: This function extracts the style attribute of the task color
    # Function return: color_of_task - the style attribute of the task color

    @staticmethod
    @allure.step("Get color of task")
    def get_color_of_task():
        color_of_task = UiActions.get_attribute(page.electron_tasks_page.get_color_of_task(), "style")
        return color_of_task

    ####################################################################################################################
    # Function Name: get_app_headline_date
    # Function Description: This function extracts the text of the headline date and compares it to today's date
    # Function Variables: header_date_actual - the text of the headline date, today's date - the current today's date
    # (using datetime), formatted_today_date - the current date formatted to match the headline date
    # Function return: header_date_actual, formatted_today_date - the text of the headline date and the formatted
    # today's date
    ####################################################################################################################

    @staticmethod
    @allure.step("Get headline date today's date flow")
    def get_app_headline_date():
        header_date_actual = UiActions.get_text(page.electron_tasks_page.get_headline_date())
        today_date = datetime.date.today()
        formatted_today_date = today_date.strftime("%Y-%m-%d")
        return header_date_actual, formatted_today_date

    ####################################################################################################################
    # Function Name: circle_checkbox
    # Function Description: This function clicks on the circle checkbox and waits for the checkbox sign to appear
    # is used to mark a task as completed
    ####################################################################################################################

    @staticmethod
    @allure.step("Click on circle checkbox flow")
    def circle_checkbox():
        UiActions.click(page.electron_tasks_page.get_svg_circle_checkbox())
        wait(For.ELEMENT_EXISTS, page_objects.electron_objects.tasks_page.check_box_sign_element)

    ####################################################################################################################
    # Function Name: label_attribute_name
    # Function Description: This function extracts the class text of the task name label
    # is used to verify the task is completed by checking the label attribute name (if a task is completed, the class
    # text will be "completed")
    # Function return: class_text - the class text of the task name label

    @staticmethod
    @allure.step("Get task name class text")
    def label_attribute_name():
        class_text = UiActions.get_attribute(page.electron_tasks_page.get_task_name_label(), "class")
        return class_text

    ####################################################################################################################
    # Function Name: select_header_color
    # Function Description: This function selects a color through the pen button selection option (color_selected) and
    # saves the color. It then extracts the style attribute of the color selected and returns it.
    # Function Parameters: color_selected
    # Function return: style_attribute - the style attribute of the color selected

    @staticmethod
    @allure.step("Select header color by pen button selection flow")
    def select_header_color(color_selected):
        UiActions.click(page.electron_tasks_page.get_pen_color_select_button_list()[0])
        UiActions.click(page.electron_tasks_page.get_pen_color_box_selection(color_selected))
        UiActions.click(page.electron_tasks_page.get_save_button())
        style_attribute = UiActions.get_attribute(page.electron_tasks_page.get_pen_color_box_selection(color_selected),
                                                  "style")
        return style_attribute

    ####################################################################################################################
    # Function Name: get_header_attribute
    # Function Description: This function extracts the style attribute of the header
    # Function return: header_color_attribute - the style attribute of the header
    ####################################################################################################################
    @staticmethod
    @allure.step("Get header color attribute")
    def get_header_attribute():
        header_color_attribute = UiActions.get_attribute(page.electron_tasks_page.get_header(), "style")
        return header_color_attribute
