#First I ask user for their general information
puts "What is your name?"
name= gets.chomp
puts "How old are you?"
age= gets.chomp
puts "How many children do you have?"
num_children= gets.chomp
puts "What decor theme do you wish to have?"
decor_theme= gets.chomp

#Construct a hash given information
client_data= {
  :name => name,
  :age => age,
  :num_children => num_children,
  :decor_theme => decor_theme,
}

#print hash
puts client_data

#ask user if they want update
puts "Do you wish to update any input? If so, please write which one? If not, write None"
key=gets.chomp
if (key!="None")
  puts "What do you wish " +key + " represents?"
  update = gets.chomp
  client_data[key.to_sym]=update
end
puts client_data
