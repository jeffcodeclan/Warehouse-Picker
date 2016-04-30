WAREHOUSE = {

   a1: 'needle',
   a2: "stop sign",
   a3: 'blouse',
   a4: 'hanger',
   a5: 'rubber duck',
   a6: 'shovel',
   a7: 'bookmark',
   a8: 'model car',
   a9: 'glow stick',
   a10: 'rubber band',

   b1: 'tyre swing',
   b2: 'sharpie',
   b3: 'picture frame',
   b4: 'photo album',
   b5: 'nail filer',
   b6: 'tooth paste',
   b7: 'bath fizzers',
   b8: 'tissue box',
   b9: 'deodorant',
   b10: 'cookie jar',

   c1: 'rusty nail',
   c2: 'drill press',
   c3: 'chalk',
   c4: 'word search',
   c5: 'thermometer',
   c6: 'face wash',
   c7: 'paint brush',
   c8: 'candy wrapper',
   c9: 'shoe lace',
   c10: 'leg warmers'
 
}

# bay_order = {

#     'a1',
#     'a2',
#     'a3',
#     'a4',
#     'a5',
#     'a6',
#     'a7',
#     'a8',
#     'a9',
#     'a10',

#     'b1',
#     'b2',
#     'b3',
#     'b4',
#     'b5',
#     'b6',
#     'b7',
#     'b8',
#     'b9',
#     'b10',

#     'c1', 
#     'c2',
#     'c3',
#     'c4',
#     'c5',
#     'c6',
#     'c7',
#     'c8',
#     'c9',
#     'c10'

# }

# def item_at_bay(bay)
#   puts WAREHOUSE["bays"][bay]
# end
# def get_item_at_location(value)
#   puts "What shelf location do you want to check? ("
#   value = gets.chomp
# end

def item_at_bay(location)
 return WAREHOUSE[location]
end

def location_of_item(product)
 return WAREHOUSE.key(product)
end


def return_multi_items(bay)
  item = []
  for bay in bays
    item = WAREHOUSE[bay]
  end
  return item
end


#-------------------------------------------------



def item_finder
 print "what location are you interested in? (a1-a10, b1-b10 or c1-c10)? "
 location = gets.chomp.to_sym
 print "Your have chosen #{item_at_bay(location)}"
end

puts item_finder
 
def product_finder    
 print "do you know what item you require? enter for location "
 product = gets.chomp
 puts "Your item is at #{location_of_item(product)}"
end

puts product_finder

def return_multi_items
 print "The multiple locations for B:5 B10 and B6 are -"
 location = gets.chomp.to_sym
 print "Your have chosen #{return_multi_items(bay)}"
end


