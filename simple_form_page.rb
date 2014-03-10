require_relative 'selenium_page_base'
require_relative 'selenium_page_element'

class SimpleFormPage < SeleniumPageBase

  def initialize(webdriver)
    super(webdriver)
    @page_element = SeleniumPageElement.new(webdriver)
  end

  def email_field(value)
    @page_element.find_element('fbemail',value)
  end

  def comment_field(value)
    @page_element.find_element('comments',value)
  end

  def submit
    @page_element.submit
  end

end