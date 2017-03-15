class Car < ActiveRecord::Base
  belongs_to :driver, class_name: 'Person', inverse_of: :cars
  belongs_to :house
end
