require 'faker'
FactoryBot.define do
  factory :user do
    username { Faker::Lorem.unique.characters(number: 5..9) }
    email    { Faker::Internet.unique.email }

    password              { 'password' }
    password_confirmation { 'password' }
  end
end
