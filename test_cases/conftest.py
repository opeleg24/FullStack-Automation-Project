import os

import allure
import appium
import mysql.connector
import pytest
from appium.webdriver.common.touch_action import TouchAction
from applitools.selenium import Eyes
from faker import Faker
import selenium.webdriver
import appium.webdriver
from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.support.event_firing_webdriver import EventFiringWebDriver
from selenium.webdriver.support.select import Select
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager

from utilities.common_ops import get_data, get_time_stamp
from utilities.event_listener import EventListener
from utilities.manage_pages import ManagePages

driver = None
eyes = Eyes()  # Applitools
db_connector = None
db_cursor = None
globals()['faker'] = Faker()
action = None
mobile_size = None


####################################################################################################################
# Function Name: init_web_driver
# Function Description: This function is used to initialize the web driver - the scope of the function is class for all tests
# inside a specific test class
# Parameters: request - parameter to access specific variables
# Function Variables: driver - web driver
#                     edriver - event firing web driver
#                     eyes - Applitools Eyes
#                     ManagePages - class to manage pages - init web pages
#                     get_data - function to get data from config file
#                     get_data('Execute_Applitools') - get the value of Execute_Applitools from config file (Yes/No)
#                     get_data('WaitTime') - get the value of WaitTime from config file
####################################################################################################################

@pytest.fixture(scope='class')
def init_web_driver(request):
    # Pycharm
    # if get_data('Execute_Applitools').lower() == 'yes':
    # Jenkins
    if os.getenv('Execute_Applitools').lower() == 'yes':
        globals()['driver'] = get_web_driver()
    else:
        edriver = get_web_driver()
        globals()['driver'] = EventFiringWebDriver(edriver, EventListener())
    driver = globals()['driver']
    driver.maximize_window()
    # Pycharm
    # driver.implicitly_wait(int(get_data('WaitTime')))
    # Jenkins
    driver.implicitly_wait(os.getenv("WaitTime"))
    driver.get(get_data('Url'))
    request.cls.driver = driver
    ManagePages.init_web_pages()

    if get_data('Execute_Applitools').lower() == 'yes':
        eyes.api_key = get_data('Applitools_API_Key')
    yield
    driver.quit()
    if get_data('Execute_Applitools').lower() == 'yes':
        eyes.close()
        eyes.abort()

####################################################################################################################
# Function Name: init_mobile_driver
# Function Description: This function is used to initialize the mobile driver- the scope of the function is class for all tests
# inside a specific test class
# Parameters: request - parameter to access specific variables
# Function Variables: driver - mobile driver
#                     get_data - function to get data from config file
#                     get_data('WaitTime') - get the value of WaitTime from config file
####################################################################################################################
@pytest.fixture(scope='class')
def init_mobile_driver(request):
    edriver = get_mobile_driver()
    globals()['driver'] = EventFiringWebDriver(edriver, EventListener())
    driver = globals()['driver']
    # Pycharm
    # driver.implicitly_wait(int(get_data('WaitTime')))
    # Jenkins
    driver.implicitly_wait(os.getenv("WaitTime"))
    request.cls.driver = driver
    globals()['action'] = TouchAction(driver)
    request.cls.action = action
    globals()['mobile_size'] = driver.get_window_size()
    request.cls.mobile_size = globals()['mobile_size']

    ManagePages.init_mobile_pages()
    yield
    driver.quit()

####################################################################################################################
# Function Name: init_db_connection
# Function Description: This function is used to initialize the database connection- the scope of the function is class for all tests
# inside a specific test class
# Parameters: request - parameter to access specific variables
# Function Variables: db_connector - database connector
#                     db_cursor - database cursor
#                     get_data - function to get data from config file
#                     get_data('DB_Host') - get the value of DB_Host from config file
#                     get_data('DB_User') - get the value of DB_User from config file
#                     get_data('DB_Password') - get the value of DB_Password from config file
#                     get_data('DB_Name') - get the value of DB_Name from config file
####################################################################################################################
@pytest.fixture(scope='class')
def init_db_connection(request):
    db_connector = mysql.connector.connect(
        host=get_data('DB_Host'),
        user=get_data('DB_User'),
        password=get_data('DB_Password'),
        database=get_data('DB_Name')
    )
    globals()['db_connector'] = db_connector
    request.cls.db_connector = db_connector
    globals()['db_cursor'] = db_connector.cursor()
    request.cls.db_cursor = db_connector.cursor()
    yield
    db_connector.close()
    db_cursor.close()

####################################################################################################################
# Function Name: init_desktop_driver
# Function Description: This function is used to initialize the desktop driver- the scope of the function is class for all tests
# inside a specific test class
# Function Parameters: request - parameter to access specific variables
# Function Variables: edriver - desktop driver
#                     get_desktop_driver - function to get the desktop driver
#                     EventFiringWebDriver - class to handle the event firing web driver
#                     EventListener - class to handle the event listener
#                     get_data - function to get data from config file
#                     get_data('WaitTime') - get the value of WaitTime from config file
#                     ManagePages - class to manage pages - init web pages
####################################################################################################################
@pytest.fixture(scope='class')
def init_desktop_driver(request):
    edriver = get_desktop_driver()
    globals()['driver'] = EventFiringWebDriver(edriver, EventListener())
    driver = globals()['driver']
    # Pycharm
    # driver.implicitly_wait(int(get_data('WaitTime')))
    # Jenkins
    driver.implicitly_wait(os.getenv("WaitTime"))
    request.cls.driver = driver
    ManagePages.init_desktop_pages()
    yield
    driver.quit()

####################################################################################################################
# Function Name: init_electron_driver
# Function Description: This function is used to initialize the electron driver- the scope of the function is class for all tests
# inside a specific test class
# Parameters: request - parameter to access specific variables
# Function Variables: edriver - electron driver
#                     get_electron_driver - function to get the electron driver
#                     get_data - function to get data from config file
#                     get_data('WaitTime') - get the value of WaitTime from config file
#                     ManagePages - class to manage pages - init web pages
####################################################################################################################
@pytest.fixture(scope='class')
def init_electron_driver(request):
    edriver = get_electron_driver()
    globals()['driver'] = EventFiringWebDriver(edriver, EventListener())
    driver = globals()['driver']
    # Pycharm
    # driver.implicitly_wait(int(get_data('WaitTime')))
    # Jenkins
    driver.implicitly_wait(os.getenv("WaitTime"))
    request.cls.driver = driver
    ManagePages.init_electron_pages()
    yield
    driver.quit()

######################################################################################################################
# Function Name: get_desktop_driver
# Function Description: This function is used to get the desktop driver
# Function Variables: dc - dictionary to store the capabilities
#                     get_data - function to get data from config file
#                     get_data('WinAppDriver_Service') - get the value of WinAppDriver_Service from config file
# Return: driver - desktop driver

####################################################################################################################


def get_desktop_driver():
    dc = {}
    dc['app'] = get_data('Application_Name')
    dc["platformName"] = "Windows"
    dc["deviceName"] = "WindowsPC"
    driver = appium.webdriver.Remote(get_data('WinAppDriver_Service'), dc)
    return driver

######################################################################################################################
# Function Name: get_electron_driver
# Function Description: This function is used to get the electron driver
# Function Variables: options - chrome options
#                     get_data - function to get data from config file
#                     get_data('Electron_App') - get the value of Electron_App from config file
#                     get_data('Electron_Driver') - get the value of Electron_Driver from config file
# Return: driver - electron driver
####################################################################################################################


def get_electron_driver():
    options = selenium.webdriver.ChromeOptions()
    options.binary_location = get_data('Electron_App')
    driver = selenium.webdriver.Chrome(chrome_options=options, executable_path=get_data('Electron_Driver'))
    return driver

######################################################################################################################
# Function Name: get_mobile_driver
# Function Description: This function is used to get the mobile driver
# Function Variables: mobile_device - mobile device
#                     get_data - function to get data from config file
#                     get_data('MobileDevice') - get the value of MobileDevice from config file
#                     get_android_driver - function to get the android driver
#                     get_ios_driver - function to get the ios driver
# Return: driver - mobile driver
####################################################################################################################

def get_mobile_driver():
    # Pycharm
    #mobile_device = get_data('MobileDevice')
    # Jenkins
    mobile_device = os.getenv("MobileDevice")
    if mobile_device.lower() == 'android':
        driver = get_android_driver(get_data('Udid'))

    elif mobile_device.lower() == 'ios':
        driver = get_ios_driver(get_data('Udid'))
    else:
        driver = None
        raise Exception('Unrecognized mobile os')
    return driver

######################################################################################################################
# Function Name: get_web_driver
# Function Description: This function is used to get the web driver
# Function Variables: web_driver - web driver
#                     get_data - function to get data from config file
#                     get_data('Browser') - get the value of Browser from config file
#                     get_chrome_driver - function to get the chrome driver
#                     get_firefox_driver - function to get the firefox driver
#                     get_edge_driver - function to get the edge driver
# Return: driver - web driver
####################################################################################################################


def get_web_driver():
    # Pycharm
    # web_driver = get_data('Browser')
    # Jenkins
    web_driver = os.getenv("Browser")
    if web_driver.lower() == 'chrome':
        driver = get_chrome_driver()
    elif web_driver.lower() == 'firefox':
        driver = get_firefox_driver()
    elif web_driver.lower() == 'edge':
        driver = get_edge_driver()
    else:
        driver = None
        raise Exception('Unsupported web driver')
    return driver

######################################################################################################################
# Function Name: get_chrome_driver
# Function Description: This function is used to get the chrome driver
# Function Variables: chrome_driver - chrome driver
#                     ChromeDriverManager - class to manage the chrome driver
# Return: chrome_driver - chrome driver
####################################################################################################################


def get_chrome_driver():
    chrome_driver = selenium.webdriver.Chrome(ChromeDriverManager().install())
    return chrome_driver

######################################################################################################################
# Function Name: get_firefox_driver
# Function Description: This function is used to get the firefox driver
# Function Variables: ff_driver - firefox driver
#                     GeckoDriverManager - class to manage the firefox driver
# Return: ff_driver - firefox driver
####################################################################################################################


def get_firefox_driver():
    ff_driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
    return ff_driver

######################################################################################################################
# Function Name: get_edge_driver
# Function Description: This function is used to get the edge driver
# Function Variables: edge_driver - edge driver
#                     EdgeChromiumDriverManager - class to manage the edge driver
# Return: edge_driver - edge driver
####################################################################################################################

def get_edge_driver():
    edge_driver = selenium.webdriver.Edge(EdgeChromiumDriverManager().install())
    return edge_driver


######################################################################################################################
# Function Name: get_android_driver
# Function Description: This function is used to get the android driver
# Function Parameters: udid - unique device identifier
# Function Variables: dc - dictionary to store the capabilities
#                     get_data - function to get data from config file
#                     get_data('APP_Package') - get the value of APP_Package from config file
#                     get_data('APP_Activity') - get the value of APP_Activity from config file
#                     get_data('Appium_Server') - get the value of Appium_Server from config file
# Return: android_driver - android driver
####################################################################################################################
def get_android_driver(udid):
    dc = {}
    dc['udid'] = udid
    dc['appPackage'] = get_data('APP_Package')
    dc['appActivity'] = get_data('APP_Activity')
    dc['platformName'] = 'android'
    android_driver = appium.webdriver.Remote(get_data('Appium_Server'), dc)
    return android_driver

######################################################################################################################
# Function Name: get_ios_driver
# Function Description: This function is used to get the ios driver
# Function Parameters: udid - unique device identifier
# Function Variables: dc - dictionary to store the capabilities
#                     get_data - function to get data from config file
#                     get_data('Bundle_ID') - get the value of Bundle_ID from config file
#                     get_data('Appium_Server') - get the value of Appium_Server from config file
# Return: ios_driver - ios driver
####################################################################################################################

def get_ios_driver(udid):
    dc = {}
    dc['udid'] = udid
    dc['bundle_id'] = get_data('Bundle_ID')
    dc['platformName'] = 'ios'
    ios_driver = appium.webdriver.Remote(get_data('Appium_Server'), dc)
    return ios_driver

######################################################################################################################
# Function Name: pytest_exception_interact
# Function Description: This function is used to take a screenshot in case of test failure
# Function Parameters: node - node
#                      call - call
#                      report - report
# Function Variables: driver - web driver
#                     get_data - function to get data from config file
#                     get_data('ScreenshotPath') - get the value of ScreenshotPath from config file
#                     get_time_stamp - function to get the time stamp
#                     allure - class to handle the allure report
#                     allure.attach - function to attach the screenshot to the allure report
####################################################################################################################

def pytest_exception_interact(node, call, report):
    if report.failed:
        if globals()['driver'] is not None:  # if it is None-> this is for API tests
            image = get_data('ScreenshotPath') + 'screen_' + str(get_time_stamp()) + '.png'
            globals()['driver'].get_screenshot_as_file(image)
            allure.attach.file(image, attachment_type=allure.attachment_type.PNG)
