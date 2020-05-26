json.partial! 'api/parties/party', party: @party

# json.gifts


# @party.guests.each do |guest|
#     json.set! guest.name do
#       guest.gifts
#   end 
# end 

json.guests @party.guests do |guest|
    json.name guest.name
    json.gifts guest.gifts, :title
end

# json.gifts all_gifts


# json.array! @guests do |guest|
#   # json.set! guest.id do     # obj: keep this line,  arr: NO.  this is 1: {}, 2: {}, etc.
#     json.partial! 'api/guests/guest', guest: guest # , gift: nil
#     # json.name guest.name
#     # json.age guest.age
#     # json.favorite_color guest.favorite_color
#   # end
# end 