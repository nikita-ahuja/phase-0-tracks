class Newsroom

attr_reader :name
attr_accessor

  def initialize(name, budget)
    @name = name
    @budget = budget
    @reporters = {}
  end

  def add_reporter(reporter_name)
    if @reporters.keys.include?(reporter_name)
      puts "We can't hire them!"
    else
      @reporters[reporter_name] = []
    end
    @reporters
  end

  def salary_for(reporter_name)
    reporter_name.length * 10000
  end


end

p room1 = Newsroom.new("Biiiiitch", 100_000)
p room1.name
#p room1.budget
p room1.add_reporter("Nikita Ahuja")
p room1.add_reporter("Nikita Ahuja")
p room1.salary_for("Anderson Cooper")


