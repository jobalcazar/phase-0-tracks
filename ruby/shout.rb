#----Release 1----
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# require 'Shout'
# Shout
# Shout.class
# Shout.yell_angrily("hello")
# Shout.yelling_happily("hello")

#---Release 3----
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Human
  include Shout
end

class Dog
  include Shout
end

#--Testing---
human = Human.new
dog = Dog.new

human.yell_angrily("Don't Do This")
dog.yelling_happily("Woof")
