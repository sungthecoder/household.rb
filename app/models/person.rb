class Person < ActiveRecord::Base
  belongs_to :house
  has_many   :cars, inverse_of: :driver
end
