require 'faker'

FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.email }
  end

  factory :invalid_user do
    email nil
  end
end