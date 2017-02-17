FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "password123"
    admin false
  end
end
