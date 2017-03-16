class Person < ActiveRecord::Base
  belongs_to :house
  has_many   :cars, inverse_of: :driver

  attr_accessor :driver_id
end
