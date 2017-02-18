FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "password123"
    admin false
    id 1
  end
end
