require 'faker'
FactoryBot.define do
  factory :user do
    usernmae { Faker::Lorem.unique.characters(number: 5..9) }
    email    { Faker::Internet.unique.email }

    password              { 'password' }
    password_confirmation { 'password' }
    confirmed_at          { Time.now }
  end
end
