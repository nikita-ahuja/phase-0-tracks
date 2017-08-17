def say_hello
  puts "Why, hello there!"
  yield("Cate", "Gaby", "Nikita")
end

say_hello {|name1, name2, name3| puts "Great to see you #{name1}, #{name2}, #{name3}!"}


cities_in_texas = ["Austin", "Houston", "Dallas"]

#before print
puts "This is the array before modification:"
p cities_in_texas

#modify array
cities_in_texas.map! do |city|
  puts city.downcase + "!"
end

#after print
puts "This is the array after modification:"
p cities_in_texas



state_capitals = {
  Georgia: "Atlanta",
  Texas: "Austin",
  Virginia: "Richmond",
}

#before print
puts "This is the hash before modification:"
p state_capitals

#modify hash
state_capitals.each do |state, capital|
  puts "#{capital} is the capital of #{state}"
end

p state_capitals