require 'rubygems'
require 'selenium-webdriver'

class SeleniumTestBase

  def initialize ( webDriver)
      @driver = webDriver
  end

  #this function start the selenium webDriver on firefox browser type
  #we can make it dynamic by using the params
  def start_browser(browser_type)
    caps = Selenium::WebDriver::Remote::Capabilities.firefox
    caps.version = "5"
    caps.platform = :LINUX
    caps[:name] = "Testing Selenium 2 with Ruby on SauceLabs Environment"

    @driver = Selenium::WebDriver.for(
        :remote,
        :url => "http://valid_sauce_url_with_key@ondemand.saucelabs.com:80/wd/hub",
        :desired_capabilities => caps)
  end

  def switch_to_window(handle)
    @driver.switch_to.window handle
  end

  def switch_to_frame (handle)
    @driver.switch.frame handle
  end

  def launch_url ( url)
    @driver.navigate.to url
  end


   def get_data(conn_string,sql1 )
     #some sql statements
    end

  def refresh
    @driver.get @driver.url
  end

  def teardown
    @driver.quit
  end

end