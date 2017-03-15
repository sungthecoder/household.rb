FactoryGirl.define do
  factory :car do
    year          1942
    make_id       "ford"
    make_display  "Ford"
    model         "A Car"
    license_plate "123ABC"
    association   :driver, factory: :person
    association   :house
  end
end
