class Newsroom

attr_reader :name
attr_accessor

  def initialize(name, budget)
    name = @name
    budget = @budget
  end

end

room1 = Newsroom.new("Biiiiitch", 100_000)


