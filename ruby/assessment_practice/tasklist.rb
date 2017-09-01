class Task_list
  attr_reader :owner
  attr_accessor :due_date

  def initialize (owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {} #location => task
  end

  def new_location(location)
    if @list.has_key?(location)
      puts "That location is already on the list!"
    else
      @list[location] = []
    end
  @list
  end


  def new_task(location, task)
    @list.each do |location, tasks|
      if @list.values.include?(task)
        puts "That task is already on the list!"
      end
    end
    if !@list.has_key?(location)
      new_location(location)
      @list[location] = task
    elsif @list.has_key?(location)
      @list[location] << task
    end
  @list
  end

  def print_pretty
    @list.each do |location, task|
      puts "At #{location}:"
      puts "-#{task.join("\n")}"
    end
  end

  def complete_task(task)
    @list.delete_if do |location, tasks|
      if @list.values.include?(task)
      end
    end
  end

end

list = Task_list.new("Nikita", "August")
#p list
p list.new_location("Target")
p list.new_location("Walmart")
p list.new_location("Walmart")
p list.new_task("Walmart", ["groceries", "makeup"])
p list.new_task("Office Max", ["supplies"])
p list.new_task("Walmart", ["groceries"])
list.print_pretty
p list.complete_task("groceries")

