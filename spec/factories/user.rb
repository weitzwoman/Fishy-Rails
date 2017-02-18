FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "password123"
    password_confirmation "pas"
    admin false
  end
end
