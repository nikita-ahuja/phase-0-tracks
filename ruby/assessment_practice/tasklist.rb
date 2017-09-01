class Task_list
  attr_reader :owner, :list
  attr_accessor :due_date

  def initialize (owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {} #location => task
  end

  def new_location(location, tasks)
    if @list.has_key?(location)
      puts "That location is already on the list!"
    else
      @list[location] = tasks
    end
  @list
  end


  def new_task(location, task)
    if @list.has_value?(task)
      puts "That task is already on the list!"
    elsif @list.has_key?(location) && !(@list.has_value?(task))
      @list[location] << task
    else
      @list[location] = task
    end
  @list
  end

  def print_pretty
    @list.each do |location, task|
      puts "At #{location}:"
      puts "-#{task.join("\n")}"
    end
  end

end

list = Task_list.new("Nikita", "August")
#p list
p list.new_location("Target", ["pens", "paper"])
p list.new_location("Walmart", ["groceries", "makeup"])
p list.new_location("Walmart", ["oranges", "pears"])
p list.new_task("Walmart", ["groceries", "makeup"])
p list.new_task("Office Max", ["supplies"])
list.print_pretty

