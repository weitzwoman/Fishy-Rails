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

  # it "will edit a product page" do
  #   user = FactoryGirl.create(:user, :admin => true)
  #   product = FactoryGirl.create(:product)
  #   visit "/products/1"
  #   click_on "Edit Product"
  #   fill_in "Name", :with => "Crab"
  #   click_on "Update Product"
  #   expect(page).to have_content "Crab"
  # end
end
