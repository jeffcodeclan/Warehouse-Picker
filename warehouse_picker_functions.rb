# * - Splat Operator

WAREHOUSE = {
  a10: "rubber band",
  a9: "glow stick",
  a8: "model car",
  a7: "bookmark",
  a6: "shovel",
  a5: "rubber duck",
  a4: "hanger",
  a3: "blouse",
  a2: "stop sign",
  a1: "needle",

  c1: "rusty nail",
  c2: "drill press",
  c3: "chalk",
  c4: "word search",
  c5: "thermometer",
  c6: "face wash",
  c7: "paint brush",
  c8: "candy wrapper",
  c9: "shoe lace",
  c10: "leg warmers",

  b1: "tyre swing",
  b2: "sharpie",
  b3: "picture frame",
  b4: "photo album",
  b5: "nail filer",
  b6: "tooth paste",
  b7: "bath fizzers",
  b8: "tissue box",
  b9: "deodorant",
  b10: "cookie jar"
}

# 1 
def return_item(bay)
  return WAREHOUSE[bay]
end

# 2
def return_bay(item)
  return WAREHOUSE.key(item)
end

# 3
def return_multi_items(*bays)
  items = []
  for bay in bays
    items << WAREHOUSE[bay]
  end
  return items
end

# 4
def return_multi_bays(*items)
  bays = []
  for item in items
    bays << WAREHOUSE.key(item)
  end
  return bays
end

# 5
def number_of_bays_apart(*bays)
  array_of_bays=WAREHOUSE.keys
  bays_in_use = []
  for bay in bays
    bays_in_use << array_of_bays.index(bay) #index position of bays
  end
  return bays_in_use.max - bays_in_use.min
end