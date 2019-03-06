json.id product.id
json.name product.name
json.description product.description
json.image_url product.image_url

json.pricing_stuff do
  json.price product.price
  json.discounted product.is_discounted?
  json.tax product.tax
  json.total product.total
end