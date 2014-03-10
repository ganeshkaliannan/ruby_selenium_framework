class SeleniumPageBase
  attr_reader :browserIndex

  def initialize ( webDriver)
     @driver = webDriver
     @browserIndex  = 1
  end

end