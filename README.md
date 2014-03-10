When we start developing regression test suites for our codebase, we encounter issues such as code duplication, repetition of setup code, searching for required section of code from actual test code, managing different layers of tests such as field level, section level, page level and application level test code. A good test automation framework is built keeping the above design issues in mind.


Steps to execute:

  Update the valid sauce url with key in selenium_test_base.rb
  
  Then run the below rspec command to execute the test cases for the simple form submit.(Note:we have used rspec for writing test senarios)

  spec project_test_base_spec.rb
  
 Finally login into https://saucelabs.com and view your dashboard for the test results,We can our new test cases in this framework based on our needs.


   

