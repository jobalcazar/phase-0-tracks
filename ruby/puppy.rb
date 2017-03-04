class Puppy
end
Puppy.methods

#Characteristics
#Puppy Breed: Varies
#Name: Varies
#Color: Varies
#Age: 1 year

#Behavior
#roll
#sit
#stay
#fetch

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

spot.class
duchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)
spot.play_dead

str = String.new
str.length
str.empty?
str += "huh."
str = "some string"

greeting = String.new("hello")
greeting.length
greeting.upcase
