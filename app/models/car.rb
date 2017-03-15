class Car < ActiveRecord::Base
  belongs_to :driver, class_name: 'Person'
  belongs_to :house
end
