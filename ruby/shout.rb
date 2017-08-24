module Shout
  def yell_loudly(words)
    puts words.upcase + "!!!!!!"
  end
end


class Announcer
  include Shout
end


class Bouncer
  include Shout
end

  # def self.yell_angrily(words)
  #   puts words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  #   puts words + " " + "WOOOOO!!!! :D "
  # end

#end

# DRIVER CODE

# Shout.yell_angrily("UGH")
# Shout.yelling_happily("Hi")

club_bouncer = Bouncer.new #instantiate
club_bouncer.yell_loudly("You can't come in here")

sports_announcer = Announcer.new #instantiate
sports_announcer.yell_loudly("...and he misses the shot")