require_relative 'project_action_base'

class SimpleFormActions < ProjectActionBase

  def initialize(webDriver)
    @driver = webDriver
    @form = SimpleFormPage.new(@driver)
  end

  def attempt_submit( email,comments,isValid = nil)
    @form.comment_field(comments)
    @form.email_field(email)
    @form.submit()
  end

end

