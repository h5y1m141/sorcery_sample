FactoryGirl.define do
  factory :user do
    id 3
    email "user@test.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
