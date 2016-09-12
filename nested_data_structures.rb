shopping_mall = {
  clothing_store: {
      womens: ['pants', 'tops', 'skirts', 'dresses', 'sweaters'],
      mens: ['pants', 'tops']
    },

  jewelry_store: {
      earrings: ['feather', 'diamond', 'metal'],
      necklaces: ['beaded', 'rustic', 'fancy']
    },

  kitchenware_store: {
      dinnerware: ['plates', 'cups', 'utencils'],
      stoveware: ['pots', 'pans', 'skillets'],
      bakeware: ['cake pans', 'cookie sheets']
    },

    shoe_store: {
      womens: ['heels', 'ballet flats', 'tennis shoes'],
      mens: ['dress shoes', 'tennis shoes']
    },

    pretzel_stand: ['soda', 'pretzels', 'hot dogs', 'churros']

}

#get pretzel from pretzel stand:
p shopping_mall[:pretzel_stand][1]

#get cake pans:
p shopping_mall[:kitchenware_store][:bakeware][0]

#print all the earring options:
p shopping_mall[:jewelry_store][:earrings]

#add ladel to stoveware array and print stoveware array:
shopping_mall[:kitchenware_store][:stoveware].push('ladel')
p shopping_mall[:kitchenware_store][:stoveware]

#add baby category in clothing store and print entire cloting store
shopping_mall[:clothing_store][:babies] = ['onesies', 'tiny shoes']
p shopping_mall[:clothing_store]