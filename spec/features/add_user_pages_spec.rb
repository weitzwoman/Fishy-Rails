require 'rails_helper'

describe 'adding User sign up process' do
  it "adds a new user with authentication" do
    visit '/'
    click_link "Sign Up"
    fill_in "Email", :with => "super@email.com"
    fill_in "Password", :with => "superSecret"
    fill_in "Password confirmation", :with => "superSecret"
    click_on "Sign up"
    expect(page).to have_content 'Welcome'
  end

  it "gives error when form field is left blank" do
    visit "/"
    click_link "Sign Up"
    click_on "Sign up"
    expect(page).to have_content "errors"
  end
end
