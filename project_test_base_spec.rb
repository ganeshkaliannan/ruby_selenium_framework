require_relative "project_test_base"
require_relative "simple_form_tests"

describe SimpleFormTests, "#testing simple form submit on selenium saucelabs environment" do

  before(:all) do
    @simple_form = SimpleFormTests.new('webDriver')
    @simple_form.setup
  end

  it "returns page title of the website" do
    @simple_form.get_page_title.should eql("I am a page title - Sauce Labs")
   end

  it "should render comment on sucessfull form submit" do
    @simple_form.successful_form_submit
  end

  after(:all) do
    @simple_form.teardown
  end


end