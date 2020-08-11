require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test 'that the index page loads' do
    visit '/'
    save_and_open_screenshot
    assert_selector 'h1', text: 'Awesome Products'
  end
end
