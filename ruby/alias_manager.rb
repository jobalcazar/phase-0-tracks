
def encrypt(name)
  vowels= ['a','e','i','o','u']
  counter=0
  while counter<name.length
    if (vowels.include?(name[counter]))
      currentvowel=vowels.index(name[counter])
      name[counter]=vowels[currentvowel+1]
      counter=counter+1
    elsif name[counter]==' '
        name[counter]=name[counter]
        p name
        counter= counter+1
    else
      name[counter]=name[counter].next
      if (vowels.include?(name[counter]))
        name[counter]=name[counter].next
      end
      counter=counter+1
    end
  end
  return name.join('')
end

quit=""
fake_names={}
while (quit!="yes")
  puts "What is your Name?"
  real_name= gets.chomp
  #real_name to be adjusted
  #split name into parts and downcase
  real_name=real_name.downcase
  name_list = real_name.split(' ')
  #make string of last name first name
  new_name = name_list[1] +" " + name_list[0]
  #change each vowel with the next vowel
  vowels= ['a','e','i','o','u']
  new_name= new_name.split('')
  fake_name= encrypt(new_name)
  p fake_name
  fake_names[real_name]= fake_name
  puts "Do you want to quit?"
  quit= gets.chomp
end
p fake_names
fake_names.each do |key, value|
  p "#{value} is actually #{key}"
end
