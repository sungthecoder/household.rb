json.id person.to_param
json.extract! person,
  :first_name,
  :last_name,
  :email,
  :age,
  :gender,
  :created_at,
  :updated_at
