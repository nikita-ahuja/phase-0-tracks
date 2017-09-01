class Newsroom

attr_reader :name
attr_accessor

  def initialize(name, budget)
    @name = name
    @budget = budget
    @reporters = {}
  end

  def add_reporter(reporter_name, skills)
    if @reporters.keys.include?(reporter_name)
      puts "We can't hire them!"
    elsif has_budget?(reporter_name) == false
      puts "We can't afford them!"
    else
      @reporters[reporter_name] = skills
    end
    @reporters
  end

  def salary_for(reporter_name)
    reporter_name.length * 10000
  end

  def total_salaries
    total_salaries = 0
    @reporters.each do |name, skills|
      total_salaries += salary_for(name)
    end
    total_salaries
  end

  def has_budget?(reporter_name)
    if total_salaries + salary_for(reporter_name) > @budget
      false
    else
      true
    end
  end

  def friendly_print
    puts "Welcome to the #{@name} Newsroom!"
    puts "Your reporting team is:"
    @reporters.each do |reporter, skills|
      #skills.join(", ")
      puts "-#{reporter}, specializing in #{skills}."
    end
    p "Thank you for watching! Good night!"
  end

  def find_reporters_with_skill(skill)
    reporters_with_skill = []
    @reporters.each do |reporter, skills|
      if skills.include?(skill)
        reporters_with_skill.push(reporter)
      end
    end
  p reporters_with_skill
  end

end

p room1 = Newsroom.new("Elysium", 300_000)
p room1.name
p room1.add_reporter("Anderson Cooper", ["politics", "economics", "grey hair"])
p room1.salary_for("Anderson Cooper")
# p room1.add_reporter("Wolf Blitzer")
# p room1.add_reporter("Jim Acosta")
p room1.total_salaries
p room1.has_budget?("Rachel Maddow")
p room1.add_reporter("Rachel Maddow", ["speaking", "presenting"])
room1.friendly_print
room1.find_reporters_with_skill("speaking")



