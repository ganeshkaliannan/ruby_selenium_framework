require_relative 'project_test_base'

class SimpleFormTests < ProjectTestBase

  def initialize(webDriver)
    super(webDriver)
  end

  def get_page_title
    @driver.title
  end

  def successful_form_submit
    @form_actions.attempt_submit("email@welcome.com", "welcome to sauce labs", true)
  end

end