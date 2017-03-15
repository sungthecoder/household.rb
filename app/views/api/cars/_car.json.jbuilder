json.id car.to_param
json.driver  do
  json.partial! 'api/people/person', person: car.driver
end
json.extract! car,
  :year,
  :make_id,
  :make_display,
  :model,
  :license_plate,
  :created_at,
  :updated_at

