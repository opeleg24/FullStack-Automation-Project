import time

import allure
import pytest

import page_objects
import utilities.manage_pages as page
from extentions.ui_actions import UiActions
from extentions.verifications import Verifications
from workflows.electron_flows import ElectronFlows
from utilities.common_ops import wait, For

task_name = "Testing Task 001"
header_color_navy_blue = "#4A90E2"
positive_grey_color = "background: rgb(165, 165, 167);"
negative_testing_red_color = "background: rgb(255, 103, 93);"
no_tasks_message_expected = "There's no task"


@pytest.mark.usefixtures('init_electron_driver')
class Test_Electron:

    @allure.title("Test01: Create a new task & verify the task name")
    @allure.title("This test case will create a new task and verify the task name")
    def test_create_new_task(self):
        ElectronFlows.add_new_task(task_name, positive_grey_color)
        Verifications.verify_equals(ElectronFlows.get_actual_task_name(), task_name)

    @allure.title("Test02: Verify the headline date")
    @allure.title("This test case will get the headline date and compare it with today's date")
    def test_get_headline_date(self):
        Verifications.verify_equals(ElectronFlows.get_app_headline_date()[0], ElectronFlows.get_app_headline_date()[1])

    @allure.title("Test03: Select color and verify the color appears on the header")
    @allure.title("This test case will select a color through the pen button selection option "
                  "and verify the color appears on the header")
    def test_select_header_color(self):
        color_attribute_expected = ElectronFlows.select_header_color(header_color_navy_blue)
        Verifications.verify_equals(ElectronFlows.get_header_attribute(), color_attribute_expected)

    @allure.title("Test04: Verify the task is completed")
    @allure.title("This test case will click on the circle checkbox and verify the task "
                  "is completed by checking the label attribute name")
    def test_task_completed(self):
        ElectronFlows.circle_checkbox()
        Verifications.verify_text_in_value("completed", ElectronFlows.label_attribute_name())

    @allure.title("Test05: Happy flow - filter by color selected")
    @allure.title("This test case will filter by color selected")
    def test_happy_flow_filer_by_color_selected(self):
        color_attribute_expected = ElectronFlows.happy_flow_filter_by_color(positive_grey_color)
        Verifications.verify_equals(color_attribute_expected, ElectronFlows.get_color_of_task())

    @allure.title("Test06: Negative flow - filter by color selected")
    @allure.title("This test case will filter by color selected")
    def test_negative_flow_filer_by_color_selected(self):
        ElectronFlows.negative_flow_filter_by_color(negative_testing_red_color)
        Verifications.verify_equals(ElectronFlows.get_no_tasks_message(), no_tasks_message_expected)
