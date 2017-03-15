FactoryGirl.define do
  factory :person do
    first_name "John"
    last_name  "Doe"
    email      { "#{first_name}.#{last_name}@email.com".downcase }
    age        42
    gender     "Other"
  end
end
