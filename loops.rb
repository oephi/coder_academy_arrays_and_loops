# For questions 1 and 2 below use the following array:
shopping_list = ['cheese', 'toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# 1) Use .each to loop through each item in the shopping_list and capitalise
#    all words in each item. Hint: work smarter not harder - check Stack Overflow

# shopping_list.each do |i|
#     puts i.split.map(&:capitalize).join(' ')
# end


# 2) Use while to loop through the shopping list and divide the shopping list
#    into multiple arrays according to item type. Print all of the arrays with a divider
#    between each and a total item count for each item.

# bathroom_items = []
# fruit = []
# dairy = []
# meals = []
# beverages = []

# i = 0
# count = 0
# while i < shopping_list.length     
#     if shopping_list[i] == 'cheese'
#         dairy.push('cheese')
#     elsif shopping_list[i]  == 'toilet paper' 
#         bathroom_items.push('toilet paper')
#     elsif shopping_list[i] == 'soap'
#         bathroom_items.push('soap')
#     elsif shopping_list[i] == 'toothpaste'
#         bathroom_items.push('toothpaste')
#     elsif shopping_list[i] == '3 avocados'
#         fruit.push('3 avocados')
#     elsif shopping_list[i] == '2 pineapples'
#         fruit.push('2 pineapples')
#     elsif shopping_list[i] == 'taco shells'
#         meals.push('taco shells')
#     elsif shopping_list[i] == 'sushi rolls'
#         meals.push('sushi rolls')
#     elsif shopping_list[i] == 'sparkling mineral water'
#         beverages.push('sparkling mineral water')
#     end
#     i+=1
# end

# puts dairy
# puts "Item count for dairy is #{dairy.count} item"
# puts "----------------"
# puts bathroom_items
# puts "Item count for bathroom_items is #{bathroom_items.count} items"
# puts "----------------"
# puts fruit
# puts "Item count for fruit is #{fruit.count} items"
# puts "----------------"
# puts meals
# puts "Item count for meals is #{meals.count} items"
# puts "----------------"
# puts beverages
# puts "Item count for beverages is #{beverages.count} item"

# 3) Create an array of at least 20 integers.
#       Use a for loop to:
#         - find the average of all the integers
#         - find the sum of all the integers
#         - create an array of the same values as floats
#         - create an array of values that are multiplied by a randomly generated number

# integers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

# sum = 0
# for i in integers
#     sum += i
# end

# floats = []
# for i in integers
#     floats.push(i.to_f)
# end

# random = []
# for i in integers
#     random.push(i * rand(1000))
# end

# puts "create an array of values that are multiplied by a randomly generated number"
# puts random
# puts ""

# puts "create an array of the same values as floats"
# puts floats
# puts ""

# puts "find the average of all the integers"
# puts sum / 20
# puts ""

# puts "find the sum of all the integers"
# puts sum


# EXTENSION TASK
# Use a for loop to go through each item in the shopping_list, remove any number in the
# string and replace it with its corresponding word. For example: '3 avocados' will
# become 'three avocados'.
# Consider using RegEx.

for i in shopping_list
    if i.include?("3")
        i.sub!("3", "three")
        shopping_list.map { |x| x == "3 avocados" ? i : x }
    elsif i.include?("2")
        i.sub!("2", "two")
        shopping_list.map { |x| x == "2 pineapples" ? i : x }
    end
end

puts shopping_list