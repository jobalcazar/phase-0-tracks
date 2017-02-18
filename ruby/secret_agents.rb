def encrypt (password)
	index = 0
	string = ""
	while index < password.length

		if password[index] == "z"
			string += "a"
		else
			each_letter = password[index].next
			string += each_letter
		end
		index += 1
	end
	p string
end


 def decrypt (password)
 	index = 0
 	string = ""
 	a_to_z = "abcdefghijklmnopqrstuvwxyz!"
 	while (index < password.length)
 		if password[index] == "a"
 			string += "z"
 		else
	 		each_letter = a_to_z.index(password[index])
	 		string += a_to_z[each_letter - 1]
 		end
 		index += 1
 	end
 	p string
 end

	puts("Hey secret agent, want encrypt/decrypt a password? (encrypt or decrypt?)")
	encrypt_or_decrypt = gets.chomp

	puts("What's the password?")
	input = gets.chomp

	if encrypt_or_decrypt == "encrypt"
		encrypt(input)
    puts("encrypted, yay!")

	elsif encrypt_or_decrypt == "decrypt"
		decrypt(input)
    puts("decrypted, yay!")
	else
		puts("please enter encrypt or decrypt")
	end
