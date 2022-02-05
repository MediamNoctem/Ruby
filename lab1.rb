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
=begin
def sumDigits n
	n = n.abs
	s = 0
	while n > 0 do
		s += n % 10;
		n /= 10;
	end
	return s
end

def minDigit n
	n = n.abs
	min = n % 10
	n = n / 10
	while n > 0 do
		if min > (n % 10)
			min = n % 10
		end
		n /= 10
	end
	return min
end

def maxDigit n
	n = n.abs
	max = n % 10
	n = n / 10
	while n > 0 do
		if max < (n % 10)
			max = n % 10
		end
		n /= 10
	end
	return max
end

def multDigits n
	n = n.abs
	m = 1
	while n > 0 do
		m *= (n % 10)
		n /= 10
	end
	return m
end

n = ARGV[0].to_i
puts "Сумма цифр числа: " + (sumDigits n).to_s
puts "Минимальная цифра числа: " + (minDigit n).to_s
puts "Максимальная цифра числа: " + (maxDigit n).to_s
puts "Произведение цифр числа: " + (multDigits n).to_s
=end

# 3
# Meth1
=begin
def isPrime n
	for i in 2...n
		if n % i == 0 
			then return false
		end
	end
	return true
end

def sumPrimDiv n
	s = 0
	for i in 1..n
		if n % i == 0 and isPrime i
			then s += i
		end
	end
	return s
end

# Meth2
def countOddDigitsOfNumMore3 n
	c = 0
	while n > 0 do
		if n % 2 != 0 and (n % 10) > 3
			then c += 1
		end
		n /= 10
	end
	return c
end

# Meth3
def sumDigits n
	n = n.abs
	s = 0
	while n > 0 do
		s += n % 10;
		n /= 10;
	end
	return s
end

def multDivOfNum n
	m = 1
	for i in 1...n
		if n % i == 0 and (sumDigits i) < (sumDigits n)
			m *= i
		end
	end
	return m
end

c = ARGV[0]

ARGV.clear

if c != nil
	print "Введите n: "
	n = (gets.chop).to_i
end

case c
when "1"
	puts "Сумма простых делителей числа: " + (sumPrimDiv n).to_s
when "2"
	puts "Количество нечетных цифр числа, больших 3: " + (countOddDigitsOfNumMore3 n).to_s
when "3"
	puts "Произведение таких делителей числа, сумма цифр которых
		\nменьше, чем сумма цифр исходного числа: " + (multDivOfNum n).to_s
when nil
	puts "Hello world"
else
	puts "Неизвестная команда."
end
=end

# Exercise 3
# 1
def minElemList list
	min = list[0]
	for i in 1...list.length
		if min > list[i]
			min = list[i]
		end
	end
	return min
end

def maxElemList list
	max = list[0]
	for i in 1...list.length
		if max < list[i]
			max = list[i]
		end
	end
	return max
end

def sumElemList list
	s = 0
	for i in 0...list.length
		s += list[i]
	end
	return s
end

def multElemList list
	m = 1
	for i in 0...list.length
		m *= list[i]
	end
	return m
end

#list = [5,-5,9,-8,1]
#puts minElemList list
#puts maxElemList list
#puts sumElemList list
#puts multElemList list