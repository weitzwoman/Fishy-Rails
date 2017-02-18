FactoryGirl.define do
  factory :product do
    name "Salmon"
    description "Fresh from rivers in Alaska"
    price 12.00
    image "salmonphoto.jpeg"
    user_id 1
  end
end
