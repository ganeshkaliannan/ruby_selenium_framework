class SeleniumPageElement

  def initialize(webDriver)
    @driver = webDriver
  end

  def waiting_get(seconds = 5, errorMessage = "")
    wait = Selenium::WebDriver::Wait.new(:timeout => seconds)
    wait.until { @myDriver.find_element(:id, @myBy)}
    def click(seconds = 5, errorMessage = "")
      waiting_get(seconds, errorMessage).click();
    end
  end


  def find_element(locator,val,errorMessage ='')
       @myBy = locator
        value = val
       @element = find_element_id
      @element.send_keys value
  end

  def submit
    @element.submit
  end

  protected

  def find_element_id
    begin
      return  @driver.find_element(:id, @myBy)
    rescue  Exception=>e
      raise e
    end
  end

end