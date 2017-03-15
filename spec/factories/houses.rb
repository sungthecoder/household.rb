FactoryGirl.define do
  factory :house do
    address     "123 Main st."
    address2    "Apt 1"
    city        "Sacramento"
    state       "CA"
    postal_code "91234"

    transient do
      people_count 2
      cars_count   2
    end

    after(:create) do |house, evaluator|
      people = create_list(:person, evaluator.people_count, house: house)
      create_list(:car, evaluator.cars_count, house: house, driver: people[0]) if people.size > 0
    end
  end
end
