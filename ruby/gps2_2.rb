#PSEUDOCODE:

# Method to create a list:
# input: carrots apples cereal pizza
# steps:
 # declare an empty hash called grocery_list
 # split string by spaces into an array
 # iterate through array make each item a hash key
 # set default value to 1
 # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list:
# input: name, qty
# steps:
#     check if name value is greater than or equal 1
        # if it is, add qty to original qty
#     else if
        # grocery_list[name.to_sym] = qty
# output: updated hash

# Method to remove an item from the list:
# input: hash, item-to-delete
# steps: delete item from hash
# output: altered-hash

# Method to update the quantity of an item:
# input: hash, item name, new qty
# steps: set new qty = to item name key
# output: hash

# Method to print a list and make it look pretty:
# input: hash
# steps: iterate through hash and print key and value
# output: strings of printed key value pairs




def create_list(grocery_string)
    grocery_list = {}
    items = grocery_string.split
    items.each do |item|
        grocery_list[item] = 1
    end
    print(grocery_list)
end


def add_item(grocery_list, item, qty = 1)
    grocery_list[item] = (grocery_list[item] || 0) + qty
    return grocery_list
end


def delete_item (grocery_list, item)
    grocery_list.delete(item)
    return grocery_list
end


def update_quantity(grocery_list, item, qty)
    grocery_list[item] = qty
    return grocery_list
end


def print(grocery_list)
    grocery_list.each {| item, qty | puts "#{item}: #{qty}" }
end

#TESTING:
grocery_list = create_list("carrots apples cereal pizza")

p grocery_list = add_item(grocery_list, "apples")
p grocery_list = add_item(grocery_list, "oranges", 2)
p grocery_list = add_item(grocery_list, "lemonade", 2)
p grocery_list = add_item(grocery_list, "tomatoes", 3)
p grocery_list = add_item(grocery_list, "onions", 1)
p grocery_list = add_item(grocery_list, "ice cream", 4)
print(grocery_list)

p grocery_list =  delete_item(grocery_list, "apples")

p grocery_list =  update_quantity(grocery_list, "carrots", 6)
p grocery_list =  update_quantity(grocery_list, "ice cream", 1)

print(grocery_list)


#REFLECTION:

# What did you learn about pseudocode from working on this challenge? Having the outline of pseudocode in the assignment to work with was really helpful in learning how to arrange my pseudocode. It was good to consciously think about (then write down) what was the expected input and output.

# What are the tradeoffs of using arrays and hashes for this challenge? Using hashes allowed us to keep the grocery item and the quanitity together in a pair. If we were to have used an array, that pair aspect would not be present.

# What does a method return? It returns the last statement in the method, or whatever is explicitly returned.

# What kind of things can you pass into methods as arguments? You can pass many things! Hashes, other methods, or more simple data types like integers, booleans, or strings.

# How can you pass information between methods? You can call a method from within another method. For example, we passed the print method through the create list method so that when the create method was invoked, the items would be printed in the way we specified in the print method.

# What concepts were solidified in this challenge, and what concepts are still confusing? Working on refactoring was really useful, and ways to refactor. Properties of nil, ways to simplify or avoid "if" statements, were all solidified. Also, the persistance of data/variables was solidified. There's nothing in this challenge that remains particularly confusing.