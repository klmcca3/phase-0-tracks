#create a new list(hash) of groceries, with the key as the item, and the value as the quantity


def create_list(input)
    list = {}
    grocery_list = input.split(' ')
    grocery_list.each do |item|
        list[item] = 1
    end
    list
end





#create a method that adds an item to the list
def add_item(hash, item)
    hash[item] = 1
end

#create and method that removes items from the list
def remove_item(hash, item)
    hash.delete(item)
end

#create an method that updates quantities
def update(hash, item, quantity)
    hash[item] = quantity
end


#print the list

list = create_list("Beans Chicken Rice Salt")
update(list, "Tomatoes", 3)
update(list, "Lemonade", 2)
update(list, "Onions", 1)
update(list, "Ice Cream", 4)
remove_item(list, "Lemonade")
update(list, "Ice Cream", 1)
p list