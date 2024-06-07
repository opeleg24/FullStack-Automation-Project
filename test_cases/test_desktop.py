import time

import allure
import pytest

from extentions.verifications import Verifications
from workflows.desktop_flows import DesktopFlows

percentage_of = '2'
percentage_from = '10'
percentage_expected = '20'
time_conversion_minutes = '60'
time_conversion_hours_expected = '1'


@pytest.mark.usefixtures('init_desktop_driver')
class Test_Desktop:

    @allure.title("Test01: Multiply two numbers")
    @allure.title("This test will multiply two numbers & verify the result")
    def test_multiply_numbers_and_verify(self):
        DesktopFlows.calculate_flow('3*2')
        Verifications.verify_equals(DesktopFlows.get_result(), "6")

    @allure.title("Test02: Divide two numbers")
    @allure.title("This test will divide two numbers & verify the result")
    def test_divide_numbers_and_verify(self):
        DesktopFlows.calculate_flow('6/2')
        Verifications.verify_equals(DesktopFlows.get_result(), "3")

    @allure.title("Test03: Subtract two numbers")
    @allure.title("This test will subtract two numbers & verify the result")
    def test_subtract_numbers_and_verify(self):
        DesktopFlows.calculate_flow('6-2')
        Verifications.verify_equals(DesktopFlows.get_result(), "4")

    @allure.title("Test04: Power by 2")
    @allure.title("This test will calculate the power of a number by 2 & verify the result")
    def test_power_of_number_and_verify(self):
        DesktopFlows.calculate_flow('2^')
        Verifications.verify_equals(DesktopFlows.get_result(), "4")

    @allure.title("Test05: Add two numbers")
    @allure.title("This test will add two numbers & verify the result")
    def test_add_numbers_and_verify(self):
        DesktopFlows.calculate_flow('2+2')
        Verifications.verify_equals(DesktopFlows.get_result(), "4")

    @allure.title("Test06: percentage of a number out of another number")
    @allure.title("This test will calculate the percentage of a number out of another number & verify the result")
    def test_percentage_of_number_and_verify(self):
        DesktopFlows.calculate_flow(percentage_of + '/' + percentage_from + '*100')
        Verifications.verify_equals(DesktopFlows.get_result(), percentage_expected)

    @allure.title("Test07: Time conversion")
    @allure.title("This test will convert minutes to hours & verify the result")
    def test_time_conversion_and_verify(self):
        DesktopFlows.time_conversion_flow(time_conversion_minutes)
        Verifications.verify_equals(DesktopFlows.get_time_conversion_result_hours(), time_conversion_hours_expected)
        DesktopFlows.return_to_standard_calculator()

    def teardown_method(self):
        DesktopFlows.clear_calculator()
