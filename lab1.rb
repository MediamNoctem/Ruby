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
=begin
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
=end

#list = [5,-5,9,-8,1]
#puts minElemList list
#puts maxElemList list
#puts sumElemList list
#puts multElemList list

# 2
=begin
def enterListFromKeyboard
	list = []
	print "Введите элемент списка: "
	elem = gets
		while elem != "\n" do
				list.append(elem.to_i)
				print "Введите элемент списка: "
				elem = gets
			end
	return list
end

def enterListFromFile path
	list = []
	f = File.open(path)
	f.each do |line|
				list.append(line.to_i)
	end
	f.close
	return list
end
	
meth = ARGV[0].downcase
enter = ARGV[1].downcase

if enter == "file"
	path = ARGV[2]
end

ARGV.clear

case enter
	when "keyboard"
		list = enterListFromKeyboard
	when "file"
		list = enterListFromFile path
	else
			enter = ""
			puts "Неизвестный способ ввода!"
	end
puts list
if enter != ""
		case meth
			when "1"
				puts "Минимальный элемент списка: " + (minElemList list).to_s
			when "2"
				puts "Максимальный элемент списка: " + (maxElemList list).to_s
			when "3"
				puts "Сумма элементов списка: " + (sumElemList list).to_s
			when "4"
				puts "Произведение элементов списка: " + (multElemList list).to_s
	end
end
=end

# Exercise 4

def enterListFromFile path
	list = []
	f = File.open(path)
	f.each do |line|
		list.append(line.to_i)
	end
	f.close
	return list
end

def enterListFromKeyboard
	list = []
	print "Введите элемент списка: "
	elem = gets
		while elem != "\n" do
				list.append(elem.to_i)
				print "Введите элемент списка: "
				elem = gets
			end
	return list
end

# 1.1
def maxElemList list
	max = list[0]
	list.each do |elem|
		if max < elem
			max = elem
		end
	end
	return max
end

def countElemAfterLastMax list
	max = maxElemList list
	indLastMax = list.rindex(max)
	return list.length - indLastMax - 1
end

# 1.13
def minElemList list
	min = list[0]
	list.each do |elem|
		if min > elem
			min = elem
		end
	end
	return min
end

def ex4_1_13 list
	min = minElemList list
	ind = list.rindex(min)
	newList = []

	list1 = []
	list.each_index do |i|
		if i < ind and list[i] != min
			list1 = list1.append(list[i])
		else
			newList = newList.append(list[i])
		end
	end
	list = newList + list1
	return list
end

# 1.25
def ex4_1_25 ar,a,b
	if a >= b or ar.empty?
		return 0
	end
	max = a
	ar.each do |elem|
		if max < elem and elem > a and elem < b
			max = elem
		end
	end
	if max == a
		then return 0
	else
		return max
	end
end

# 1.37
def ex4_1_37 ar
	c = 0
	(ar.length - 1).times do |i|
		if ar[i] > ar[i + 1] 
			then
			puts i + 1
			c += 1
		end
	end
	return c
end

# 1.49
def isPrime n
	(n - 2).times do |i|
		if n % (i + 2) == 0 
			then return false
		end
	end
	return true
end

def ex4_1_49 list
	l = []
	list.each do |elem|
		elem.times do |i|
			if elem % (i + 1) == 0 and isPrime (i + 1)
				l |= [i + 1]
			end
		end
	end
	return l
end

# Ex4.1
def ex4_1
	puts "************************Методы************************"
	puts "1. Найти количество элементов, расположенных после\nпоследнего максимального."
	puts "2. Разместить элементы, расположенные до минимального,\nв конце массива."
	puts "3. Необходимо найти максимальный из элементов в\nинтервале (a,b)."
	puts "4. Вывести индексы элементов, которые меньше своего\nлевого соседа, и количество таких чисел."
	puts "5. Для введенного списка положительных чисел\nпостроить список всех положительных простых делителей\nэлементов списка без повторений."
	puts "******************************************************"
	puts "Введите номер метода."
	print "--> "
	meth = gets.chop
	puts meth
	if ["1", "2", "3", "4", "5"].include?(meth)
		then
		puts "Введите, откуда нужно считать массив (file или keyboard)."
		print "--> "
		enter = gets.chop.downcase

		case enter
			when "file"
				puts "Введите путь к файлу."
				print "--> "
				path = gets.chop
				list = enterListFromFile path
			when "keyboard"
				list = enterListFromKeyboard
			else
				enter = ""
				puts "Неизвестный способ ввода!"
		end

		if enter != ""
			case meth
				when "1"
					puts "Количество элементов, расположенных после последнего максимального: " + (countElemAfterLastMax list).to_s
				when "2"
					puts "Разместить элементы, расположенные до минимального,в конце массива: " + (ex4_1_13 list).to_s
				when "3"
					print "Введите a: "
					a = gets.to_i
					print "Введите b: "
					b = gets.to_i
					puts "Максимальный из элементов в интервале (a,b): " + (ex4_1_25 list,a,b).to_s
				when "4"
					puts "Количество чисел, которые меньше своего левого соседа: " + (ex4_1_37 list).to_s
				when "5"
					puts "Список всех положительных простых делителей элементов списка без повторений: " + (ex4_1_49 list).to_s
			end
		end
	else
		puts "Неизвестный метод!"
	end
end

# C:\Users\romAn\OneDrive\Документы\GitHub\Ruby\file3-2.txt

ex4_1