from lettuce import before, after, world
from splinter.browser import Browser
from django.conf import settings

SELENIUM_DRIVER = getattr(settings, 'SELENIUM_DRIVER', 'webdriver.chrome')

@before.harvest
def setup_browser(scenario):
    world.browser = Browser(SELENIUM_DRIVER)

@after.harvest
def teardown_browser(scenario):
    world.browser.quit()
