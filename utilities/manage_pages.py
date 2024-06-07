import test_cases.conftest as conf
from page_objects.desktop_objects.side_nav import SideNavPage
from page_objects.desktop_objects.standart_page import StandardPage
from page_objects.desktop_objects.time_page import TimePage
from page_objects.electron_objects.tasks_page import TasksPage
from page_objects.mobile_objects.about_page import AboutPage
from page_objects.mobile_objects.convert_page import ConvertPage
from page_objects.mobile_objects.favorites_page import FavoritesPage
from page_objects.mobile_objects.history_page import HistoryPage
from page_objects.mobile_objects.main_nav_section import MainNav
from page_objects.web_objects.hotel_form import HotelForm
from page_objects.web_objects.top_header import TopHeader
from page_objects.web_objects.top_nav import TopNav
from page_objects.web_objects.blog_pages import BlogPages

# Web Objects
web_top_header = None
web_hotel_form = None
web_top_nav = None
web_blog_pages = None

# Mobile Objects
mobile_main_nav_section = None
mobile_about_page = None
mobile_convert_page = None
mobile_history_page = None
mobile_favorites_page = None

# Electron Objects
electron_tasks_page = None

# Desktop Objects
desktop_standard_page = None
desktop_side_nav = None
desktop_time_page = None


class ManagePages:
    ####################################################################################################################
    # Function Name: init_web_pages
    # Description: This function initializes the web pages
    # each variable (represent a page) is initialized with the page object class and the driver
    ####################################################################################################################
    @staticmethod
    def init_web_pages():
        globals()['web_top_header'] = TopHeader(conf.driver)
        globals()['web_hotel_form'] = HotelForm(conf.driver)
        globals()['web_top_nav'] = TopNav(conf.driver)
        globals()['web_blog_pages'] = BlogPages(conf.driver)

    ####################################################################################################################
    # Function Name: init_electron_pages
    # Description: This function initializes the web pages
    # each variable (represent a page) is initialized with the page object class and the driver
    ####################################################################################################################
    @staticmethod
    def init_electron_pages():
        globals()['electron_tasks_page'] = TasksPage(conf.driver)

    ####################################################################################################################
    # Function Name: init_desktop_pages
    # Description: This function initializes the web pages
    # each variable (represent a page) is initialized with the page object class and the driver
    ####################################################################################################################
    @staticmethod
    def init_desktop_pages():
        globals()['desktop_standard_page'] = StandardPage(conf.driver)
        globals()['desktop_side_nav'] = SideNavPage(conf.driver)
        globals()['desktop_time_page'] = TimePage(conf.driver)

    ####################################################################################################################
    # Function Name: init_mobile_pages
    # Description: This function initializes the web pages
    # each variable (represent a page) is initialized with the page object class and the driver
    ####################################################################################################################
    @staticmethod
    def init_mobile_pages():
        globals()['mobile_main_nav_section'] = MainNav(conf.driver)
        globals()['mobile_about_page'] = AboutPage(conf.driver)
        globals()['mobile_convert_page'] = ConvertPage(conf.driver)
        globals()['mobile_favorites_page'] = FavoritesPage(conf.driver)
        globals()['mobile_history_page'] = HistoryPage(conf.driver)
