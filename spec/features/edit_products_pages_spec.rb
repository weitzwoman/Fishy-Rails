require 'rails_helper'

describe "editing Products" do

  it "will edit a product page" do
    user = FactoryGirl.create(:user, :admin => true)
    product = FactoryGirl.create(:product)
    login_as(user)
    visit product_path(product)
    click_on "Edit Product"
    fill_in "product[name]", :with => "Crab"
    click_on "Update Product"
    expect(page).to have_content "Crab"
  end
end
