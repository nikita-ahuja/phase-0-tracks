def say_hello
  puts "Why, hello there!"
  yield("Cate", "Gaby", "Nikita")
end

say_hello {|name1, name2, name3| puts "Great to see you #{name1}, #{name2}, #{name3}!"}