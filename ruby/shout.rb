module Shout

  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    puts words + " " + "WOOOOO!!!! :D "
  end

end

Shout.yell_angrily("UGH")
Shout.yelling_happily("Hi")