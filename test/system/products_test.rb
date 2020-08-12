require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test 'that the index page loads' do
    visit '/'
    save_and_open_screenshot
    assert_selector 'h1', text: 'Awesome Products'
    assert_selector '.card-product', count: Product.count
  end

  test 'that the user can create a new product' do
    # step 1: user logs in
    login_as users(:id_1)
    # step 2: user visit 'new product' page
    visit '/products/new'
    save_and_open_screenshot
    # step 3: user fills and submits new product form
    fill_in 'product_name', with: 'Le Wagon'
    fill_in 'product_tagline', with: 'Change your life: learn to code.'
    save_and_open_screenshot
    click_on 'Create Product'
    
    assert_equal root_path, page.current_path
    assert_text 'Change your life: learn to code.'
  end
end
