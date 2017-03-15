json.id car.to_param

json.driver  do
  json.partial! 'api/people/person', person: car.driver
end unless car.driver.nil?

json.extract! car,
  :year,
  :model,
  :license_plate,
  :created_at,
  :updated_at

json.make do
  json.make_id car.make_id
  json.make_display car.make_display
end

