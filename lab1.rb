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
=begin
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
=end

# var3
=begin
puts "Введите название Вашего любимого языка."
l = gets.chop
case l
when "ruby"
	puts "Вы подлиза!"
else
	case l
	when "python"
		puts "Ожидаемо!"
	when "c#"
		puts "Неплохо!"
	when "c++"
		puts "Хорошо!"
	else
		puts "..."
	end
	puts "Скоро будет ruby."
end
=end

# 4
=begin
puts "Введите команду Ruby:"
a = gets.chop
puts eval(a)

puts "Введите команду ОС:"
b = gets.chop
puts(`#{b}`)
=end

# Exercise 2
# 1
=begin
n = ARGV[0].to_i
s = 0
while n > 0 do
	s += n % 10;
	n /= 10;
end
puts s
=end

# 2
def sumDigits n
	s = 0
	while n > 0 do
		s += n % 10;
		n /= 10;
	end
	return s
end

n = ARGV[0].to_i
puts sumDigits n