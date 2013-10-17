require 'faker'

FactoryGirl.define do
  factory :team do
    division
    city Faker::Address.city
    name Faker::Commerce.product_name
  end
end
