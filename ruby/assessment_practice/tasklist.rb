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
      puts "#{location.capitalize} is already on the list!"
    else
      @list[location] = []
    end
  #@list
  end


  def new_task(location, task)
    new_location(location)
    if @list[location].include?(task)
      puts "That task is already on the list!"
    else # if @list.has_key?(location)
      @list[location] << task
    end
  #@list
  end

  def print_pretty
    @list.each do |location, list_of_tasks|
      puts "At #{location}:"
      list_of_tasks.each do |task|
        puts "-#{task}"
      end
    end
  end

  def complete_task(location, task)
    if @list[location].include?(task)
      @list[location].delete(task)
    else
      puts "That task was never on the list!"
    end
  #@list
  end

  def is_past_due?(current_day)
    days_of_week = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ]

    if @list.values.length == 0
  # if @list.values.all? {|tasks| tasks.empty? } (Glenna's way)
      false
      puts "There are no tasks on the list!"

    elsif days_of_week.index(@due_date) < days_of_week.index(current_day)
      true
      "Your tasks were due #{due_date}"
    elsif days_of_week.index(@due_date) > days_of_week.index(current_day)
      false
      "You have until #{due_date} to complete all your tasks."
    end
  end
end


    #compare current day to due_date
    #if no tasks on the list
      # - print "Nothing is past due!"
      # - return false
    # elsif is something is past due (current day is past the due date)
      # - return true
    # else the current day is before the @due_date
      # return false

list = Task_list.new("Nikita", "Thursday")
#p list
p list.new_location("Target")
p list.new_location("Walmart")
p list.new_location("Walmart")
p list.new_task("Walmart", "get groceries")
p list.new_task("Office Max", "buy supplies")
p list.new_task("Walmart", "get groceries")
p list.new_task("Target", "purchase scissors")
p list.new_task("Target", "purchase clothing")
list.print_pretty
# p list.complete_task("Walmart", "get groceries")
# p list.complete_task("Walmart", "do nails")

# p list.complete_task("Walmart", "get groceries")
# p list.complete_task("Office Max", "buy supplies")
# p list.complete_task("Walmart", "get groceries")
# p list.complete_task("Target", "purchase scissors")
# p list.complete_task("Target", "purchase clothing")

p list.is_past_due?("Friday")