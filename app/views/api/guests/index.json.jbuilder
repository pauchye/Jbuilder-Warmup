json.array! @guests do |guest|
  # json.set! guest.id do     # obj: keep this line,  arr: NO.  this is 1: {}, 2: {}, etc.
  if guest.age >= 40 && guest.age <= 50
    json.partial! 'api/guests/guest', guest: guest # , gift: nil
    # json.name guest.name
    # json.age guest.age
    # json.favorite_color guest.favorite_color
  # end
  end
end 
