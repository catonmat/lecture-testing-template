require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test 'that the index page loads' do
    visit '/'
    assert_selector 'h1', text: 'Awesome Products'
  end
end
