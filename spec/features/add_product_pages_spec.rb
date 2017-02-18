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
end
