class Newsroom

attr_reader :name, :reporters
attr_accessor :budget

  def initialize(name, budget)
    @name = name
    @budget = budget
    @reporters = {}
  end

  def add_reporter(reporter_name, skills)
    if has_budget?(reporter_name)
      if @reporters.keys.include?(reporter_name)
        puts "We can't hire another #{reporter_name}!"
      else
        @reporters[reporter_name] = skills
      end
    else #!has_budget?(reporter_name)
      puts "We can't afford #{reporter_name}!"
    end
    @reporters
  end

  def salary_for(reporter_name)
    reporter_name.length * 10000
  end

  # def total_salaries
  #   total_salaries = 0
  #   @reporters.keys.each do |name|
  #     total_salaries += salary_for(name)
  #   end
  #   total_salaries
  # end

# more efficient way to write total_salaries

  def total_salaries
    @reporters.keys.reduce(0) do |sum, name|
      sum + salary_for(name)
    end
  end

  #commented out inefficiency... comparison operator automatically returns true or false!
  def has_budget?(reporter_name)
    #if
      total_salaries + salary_for(reporter_name) <=  budget
    #   true
    # else
    #   false
    # end
  end

  def friendly_print
    puts "Welcome to the #{@name} Newsroom!"
    puts #new line
    puts "Your reporting team is:"
    @reporters.each do |reporter, skills|
      #skills.join(", ")
      puts "-#{reporter}, specializing in #{skills.join(", ")}."
    end
    puts
    puts "Thank you for watching! Good night!"
  end

  # def find_reporters_with_skill(skill)
  #   reporters_with_skill = []
  #   @reporters.each do |reporter, skills|
  #     if skills.include?(skill)
  #       reporters_with_skill.push(reporter)
  #     end
  #   end
  # p reporters_with_skill
  # end

  # more efficient way to write skill method
  def find_reporters_with_skill(skill)
    reporters_with_skill = @reporters.select do |name, skills|
      skills.include?(skill)
    end
    reporters_with_skill.keys
  end

  def new_skill(reporter_name, skill)
    @reporters[reporter_name] << skill
  end

end

p room1 = Newsroom.new("Elysium", 300_000)
p room1.name
p room1.add_reporter("Anderson Cooper", ["politics", "economics", "grey hair"])
p room1.salary_for("Anderson Cooper")
p room1.add_reporter("Wolf Blitzer", ["grey hair"])
# p room1.add_reporter("Jim Acosta")
p room1.total_salaries
p room1.has_budget?("Rachel Maddow")
p room1.add_reporter("Rachel Maddow", ["speaking", "presenting"])
room1.friendly_print
p room1.find_reporters_with_skill("grey hair")
p room1.reporters
room1.new_skill("Anderson Cooper", "painting")
p room1.reporters




