class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity)
    #@color = color
    @gender= gender
    @ethnicity=ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age =rand(140)
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookie(cookie_type)
    p "That was a good #{cookie_type}!"
  end
  def celebrate_birthday
    age = age+1
    age
  end
  def get_mad_at(name)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(name))
    @reindeer_ranking[@reindeer_ranking.length]=(name)
    @reindeer_ranking
  end

  #def gender=(new_gender)
  #  @gender = new_gender
  #end

  #def age
  #  @age
  #end

  #def ethnicity
  #  @ethnicity
  #end
end

# santa1= Santa.new("boy","hispanic","blue")
# santa1.speak
# santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# exammple_colors = ["blue", "yellow","red","pink","prefer not to say", "purple","N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], exammple_colors[i])
# end
#santa1.get_mad_at("Rudolph")
#santa1.ethnicity
#santa1.age
counter =0
until counter == 100
  counter+=1
  rand_ethnicity= ethnicities[rand(ethnicities.length)]
  rand_gender = genders[rand(genders.length)]
  santa1 = Santa.new(rand_gender, rand_ethnicity)
  p santa1.age
  p santa1.gender
  p santa1.ethnicity
end
