# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string into components
  # add each component into empty hash, with key being item and value being quantity
  # print the list to the console using printing method
# output: hash
def create_new_list(items)
  item_array = items.split(' ')
  grocery_list={}
  item_array.each do |item|
    grocery_list[item]=1
  end
  grocery_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: using hash_name[item]=quantity, I will add each inout accordingly
# output: updated hash
def add(list, item, quanity=1)
  if list.has_key?(item)
    list[item]+=quanity
  else
    list[item]=quanity
  end
  list
end

# Method to remove an item from the list
# input: list, item that will be removed
# steps:using delete method for hashes
# output: updated hash
def remove(list, item)
  list.delete(item)
  list
end
# Method to update the quantity of an item
# input:item that will be updated as updateitem
# steps: find updateitem in hash and set it to new quantity
# output:updated hash
def update(list,item, quanity)
  list[item]=quanity
  list
end

# Method to print a list and make it look pretty
# input:hash
# steps:using p function to display and print value
# output: hash
def print_list(list)
  list.each do |key, value|
    p "#{key} => #{value}"
  end
end

list = create_new_list("Lemonade Tomatoes Onions Ice_Cream")
p list
p add(list,"Lemonade",1)
p remove(list, "Onions")
p update(list, "Ice_Cream", 3)
print_list(list)
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4

#What did you learn about pseudocode from working on this challenge?
  #it is important to write out logic before implementing code
#What are the tradeoffs of using arrays and hashes for this challenge?
  #hashes provides an easier way to access materials
#What does a method return?
  #returns any value you want, in this case, the list
#What kind of things can you pass into methods as arguments?
  #anything you like, strings, hashes, ints, etc
#How can you pass information between methods?
  #you have the ability to call methods between one another and by making
  #global variables
#What concepts were solidified in this challenge, and what concepts are still
# confusing?
# the use of each do was solidified
