class Task_list
  attr_reader :owner
  attr_accessor :due_date

  def initialize (owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {} #location => task
  end

  def new_location(location)
    @list[location] = ""
  end

end

list = Task_list.new("Nikita", "August")
list.new_location("Target")
list.new_location("Walmart")
p list
