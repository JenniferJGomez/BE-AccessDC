require 'rest-client'
require 'json'
require 'byebug'

Location.destroy_all
User.destroy_all
Review.destroy_all
Rating.destroy_all

key = Rails.application.credentials[:API]

response_yelp = RestClient.get("https://api.yelp.com/v3/businesses/search?location=Washington D.C.&limit=50&categories=publicservicesgovt", {"Authorization" => "Bearer #{key}"})

response = JSON.parse(response_yelp)

response_array = response["businesses"]

user1 = User.create(username: "CatTheGreat", name: "Cat Walker", avatar:"https://image.flaticon.com/icons/png/512/194/194938.png")

response_array.each do |location|
    rating = location["rating"]
    name = location["name"]
    img_url = location["image_url"]
    url = location["url"]
    phone = location["display_phone"]
    address = location["location"]["display_address"][0]

    location = Location.create(name: name, img_url: img_url, url:url, phone:phone, address: address)
    Rating.create(user_id: user1.id, location_id: location.id, rating: rating)
end






