json.items do
  json.array! @households do |household|
    json.partial! 'api/households/household', household: household
  end
end
