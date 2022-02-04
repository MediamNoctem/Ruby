# Exercise 1
# 1
#puts "Hello world"

# 2
=begin
n = ARGV[0]
puts "Здравствуйте, #{n}!"
=end

# 3
# var1
=begin
puts "Введите название Вашего любимого языка."
l = gets.chop

if l.downcase == "ruby"
	puts "Вы подлиза!"
else
	if l.downcase == "python"
		puts "Ожидаемо!"
	else
		if l.downcase == "c#"
		puts "Неплохо!"
		else
			if l.downcase == "c++"
				puts "Хорошо!"
			else 
				puts "..."
			end
		end
	puts "Скоро будет ruby."
	end
end
=end

# var2
puts "Введите название Вашего любимого языка."
l = gets.chop
res = ""
res = if l.downcase == "ruby"
		 "Вы подлиза!"
	  else
	  	if l.downcase == "python"
	  		"Ожидаемо!\nСкоро будет ruby."
	  	else
	  		if l.downcase == "c#"
	  			"Неплохо!\nСкоро будет ruby."
	  		else
	  			if l.downcase == "c++"
	  				"Хорошо!\nСкоро будет ruby."
	  			else
	  				"...\nСкоро будет ruby."
	  			end
	  		end
	  		end
	  	end
puts res