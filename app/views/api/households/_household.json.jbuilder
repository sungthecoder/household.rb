json.id household.to_param
json.extract! household,
  :address,
  :address2,
  :city,
  :state,
  :postal_code

json.cars household.cars do |car|
  json.partial! 'api/cars/car', car: car
end

json.people household.people do |person|
  json.partial! 'api/people/person', person: person
end

json.extract! household,  :created_at, :updated_at
