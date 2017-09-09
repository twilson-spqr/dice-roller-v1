FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@#{Faker::Lovecraft.location}.com" }
    sequence(:username) { |n| "#{Faker::Lovecraft.word}#{n}" }
    first_name 'Jane'
    last_name 'Doe'
    password "#{Faker::Lovecraft.word}#{Faker::Lovecraft.word}"
  end
end
