puts "How many employees will be processed?"
num_employees=(gets.chomp.to_i)
until (num_employees==0)
  puts "What is your Name?"
  name= gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year_born= gets.chomp.to_i
  puts "We have some garlic bread. Would you like some? (y/n)"
  garlic_bread= gets.chomp
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insurance = gets.chomp

  if (age == 2017-year_born && (garlic_bread=='y' || health_insurance=='y'))
    puts "Probably not a vampire"
  elsif (age != 2017-year_born && (health_insurance=='n' || garlic_bread=='n'))
    puts "Probably a vampire"
  elsif (age != 2017-year_born && (health_insurance=='n' && garlic_bread=='n'))
    puts "Almost certainly a vampire"
  elsif (name=="Dracula" || name == "Tu Fang")
    puts "Defintely a vampire"
  else
    puts "Results inconclusive"
  end
  allergies=''
  until (allergies == "sunshine" || allergies == "None")
    puts "Do you have any allergies? If so, what are they? If not, write None."
    allergies=gets.chomp
    if allergies == "sunshine"
      puts "Probably a vampire"
      end
  end
  num_employees=num_employees-1
  end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
