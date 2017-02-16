puts "How many employees will be processed"
num_employees=gets.to_i
i=0
While (i!= num_employees)
  puts "What is your Name?"
  name= gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born?"
  year_born= gets.chomp
  puts "We have some garlic bread. Would you like some?"
  garlic_bread= gets.chomp
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insurance = gets.chomp

  wolves_like_sunshine = true
  wolves_like_garlic = true
  vampires_like_sunshine = false
  vampires_like_garlic = false

  if (age == 2017-year_born && (wolves_like_garlic || health_insurance=='y'))
    puts "Probably not a vampire"
  elsif (age ¡== 2017-year_born && (health_insurance='n' || vampires_like_garlic))
    puts "Probably a vampire"
  elsif (age ¡== 2017-year_born && (health_insurance='n' && vampires_like_garlic))
    puts "Almost certainly a vampire"
  elsif (name="dracula" || name = "Tu Fang")
    puts "Defintely a vampire"
  else
    puts "Results inconclusive"
end
  while (allergies!="sunshine" || allergies!="Done")
    puts "Do you have any allergies? If not, write done"
    allergies=gets.chomp
    if allergies == "sunshine"
      puts "Probably a vampire"
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
