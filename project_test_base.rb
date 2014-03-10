require_relative 'selenium_test_base'
require_relative 'simple_form_actions'
require_relative 'simple_form_page'

class ProjectTestBase   < SeleniumTestBase


  def initialize(webDriver)
    super(webDriver)
  end

  def create_actions(webDriver)
     @form_actions = SimpleFormActions.new(webDriver)
  end


  def create_pages(webDriver)
    #code to create the respective page instance
  end

  def  setup_test_fixture()
        #Function is virtual so child test classes can have additional functionality.
        #For this example project, nothing needs to be done on this level
  end

  def setup
    webDriver = start_browser("firefox")
    create_actions(webDriver)
    launch_url("http://saucelabs.com/test/guinea-pig")
  end

end