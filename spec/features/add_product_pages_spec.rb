require 'rails_helper'

describe "Products" do
  it 'will show the products page' do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit "/"
    click_on "View All Products"
    expect(page).to have_content 'Inventory'
  end

  it 'will show a product page' do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit "/"
    click_on "View All Products"
    click_on "Salmon"
    expect(page).to have_content 'Price'
  end

  it 'will add a product, if user admin' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user)
    visit products_path
    click_on "Add New Product"
    fill_in "product[name]", :with => "Lobster"
    fill_in "product[description]", :with => "From Maine"
    fill_in "product[price]", :with => 10.00
    fill_in "product[image]", :with => "lobster.jpg"
    click_on "Create Product"
    expect(page).to have_content 'Lobster'
  end

  it 'will show errors if empty new product fields' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user)
    visit products_path
    click_on "Add New Product"
    click_on "Create Product"
    expect(page).to have_content 'Please Try Again'
  end

end
