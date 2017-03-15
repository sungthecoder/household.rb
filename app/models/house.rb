class House < ActiveRecord::Base
  has_many :people
  has_many :cars

  accepts_nested_attributes_for :people, :cars
end
