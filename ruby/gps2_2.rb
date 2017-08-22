# Method to create a list
def create_list(string_of_items)
    array_of_items = string_of_items.split(" ")
    grocery = {}
    array_of_items.each do |grocery_item|
        p grocery[grocery_item] = 1
    end
    p grocery
end

test = "carrot(s) apple(s) cereal pizza"
example_list = create_list(test)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#Separate each item into their individual elements of an array using the split method.
 # set default quantity (this will be the value)
  # print the list to the console [can you use one of your other methods here?]
# output: the output will be a hash and the keys will be the type of items at a grocery store. The values will be the quanities of those items.
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add item name as a key and quanity as a value to the hash that is passed in as the input list.
# output: An updated hash

def add_item(list, item_name, quantity = 1)
    list[item_name] = quantity
    list
end
p add_item(example_list, "banana(s)", 7)
p add_item(example_list, "mango(s)")

# Method to remove an item from the list
# input: The list, item name
# steps: Name the list and the item that you woiuld like delete.
# output: An updated hash without the deleted item.

def delete_item(list, item_name)
  list.delete(item_name)
  list
end

p delete_item(example_list, "banana(s)")


# Method to update the quantity of an item
# input: List, item name and quanity
# steps: If you have the same list, item name and different quanity then it will updated the quanity
# output: An updated hash with a different quanity

def update_quantity(list, existing_item, new_quantity)
  list[existing_item] = new_quantity
  list
end

p update_quantity(example_list, "mango(s)", 4)


# Method to print a list and make it look pretty
# input: The list, item name and quanity
# steps: Iterate through each item and print a sentence for the item
# output: A detailed and cleaned up version of the items withing the sentence

def print_list(list)
  puts "GROCERY LIST"
  puts "You need to buy:"
  list.each do |grocery_item, quantity|
  puts "#{quantity} #{grocery_item}"
  end
  puts "...and that's it!"
end

p print_list(example_list)
