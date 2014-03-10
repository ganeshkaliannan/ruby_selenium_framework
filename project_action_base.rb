require_relative 'selenium_action_base'


class ProjectActionBase < SeleniumActionBase

  def initialize(webdriver)
    super(webdriver)
    @form_page = SimpleFormPage.new(webdriver)
  end

end