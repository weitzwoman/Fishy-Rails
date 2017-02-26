require 'rails_helper'

describe "add comments" do
  it "will allow basic user to add comments" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    login_as(user)
    visit new_product_comment_path(product)
    fill_in "Enter Comment", :with => "Something interesting"
    click_on "Create Comment"
    expect(page).to have_content 'Something'
  end
end
