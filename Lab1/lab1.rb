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
=begin
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
=end

# Exercise 5
# 1.1
def ex5_1_1 s
	k = 0
	reg = /[а-яё]/
	s.each_char do |c|
		if reg.match(c) != nil
			k += 1
		end
	end
	k
end

# 1.9
def ex5_1_9 s
	reg = /[a-z]/
	s1 = ""
	s.each_char do |c|
		if reg.match(c) != nil
			s1 += c
		end
	end

	if s1 == s1.reverse and s1 != ""
		then puts "Строчные символы латиницы образуют палиндром."
	else puts "Строчные символы латиницы не образуют палиндром."
	end
end
=begin
s = "hello"
s1 = "aadaa"
s2 = "SDLada343DD<5"
s3 = "FNJKENFKE"
ex5_1_9 s
ex5_1_9 s1
ex5_1_9 s2
ex5_1_9 s3
=end

# 1.18
def ex5_1_18 s
	a = []
	while date = s.match(/(((0[1-9]|[1-2][0-9]|30|31)\.(0(1|3|5|7|8)|10|12|января|марта|мая|июля|августа|октября|декабря))|((0[1-9]|[1-2][0-9]|30)\.(0(4|6|9|11)|апреля|июня|сентября|ноября))|((0[1-9]|[1-2][0-9])\.(02|февраля)))\.(\d\d\d\d|\d\d\d|\d\d)/)
		date = date.to_s
		a.append date
		s = s.sub date,''
	end
	a
end

# s = "30.02.2007"
# puts (ex5_1_18 s).to_s

# 2
def ex5_2 s
	a = []
	while date = s.match(/(((0[1-9]|[1-2][0-9]|30|31) (января|марта|мая|июля|августа|октября|декабря))|((0[1-9]|[1-2][0-9]|30) (апреля|июня|сентября|ноября))|((0[1-9]|[1-2][0-9]) (февраля))) (\d\d\d\d|\d\d\d|\d\d)/)
		date = date.to_s
		a.append date
		s = s.sub date,''
	end
	a
end

# s = "dfsdks29 февраля 2007sdfl33 декабря 9999"
# puts (ex5_2 s).to_s

# 2.1
def ex5_2_1 s
	s = s + ' '
	max = (s.match(/[-]?((\d*\.\d*)|(\d+))/)).to_s.to_f
	while num = s.match(/[-]?((\d*\.\d*)|(\d+))/)
		num = num.to_s
		s = s.sub num + ' ',''
		num = num.to_f
		if max < num
			max = num
		end
	end
	max
end

# s = '-300.0 -5.1 -300.01'
# puts (ex5_2_1 s).to_s

# 2.9
def ex5_2_9 s
	s = s + ' '
	min = (s.match(/[-]?((\d*\.\d*)|(\d+))/)).to_s.to_f
	while num = s.match(/[-]?((\d*\.\d*)|(\d+))/)
		num = num.to_s
		s = s.sub num + ' ',''
		num = num.to_f
		if min > num
			min = num
		end
	end
	min
end

# s = '-300.0 -5.1 -300.01'
# puts (ex5_2_9 s).to_s

# 2.18
def ex5_2_18 s
	n_max = s.match(/\d+/).to_s.length
	while n = s.match(/\d+/)
		n = n.to_s
		s = s.sub n,''
		n = n.length
		if n_max < n
			n_max = n
		end
	end
	n_max
end

# s = '56465ddsda46848sdsd455 111'
# puts (ex5_2_18 s).to_s

def ex5
	puts "************************Методы************************"
	puts "1. Дана строка. Необходимо найти максимальное из имеющихся в ней вещественных чисел."
	puts "2. Дана строка. Необходимо найти минимальное из имеющихся в ней рациональных чисел."
	puts "3. Дана строка. Необходимо найти наибольшее количество идущих подряд цифр."
	puts "******************************************************"
	puts "Введите номер метода."
	print "--> "
	meth = gets.chop
	puts meth
	if ["1", "2", "3"].include?(meth)
	then
		puts "Введите строку:"
		s = gets.chomp

		case meth
		when "1"
			puts (ex5_2_1 s).to_s
		when "2"
			puts (ex5_2_9 s).to_s
		else
			puts (ex5_2_18 s).to_s
		end
	else
		puts "До свидания!"
	end
end

# ex5

# Exercise 6
# 1
def enter_list_string_from_file path
	list = []
	f = File.open(path)
	f.each do |line|
		list.append(line)
	end
	f.close
	list
end

def sort_by_line_length
	puts 'Введите путь к файлу.'
	path = gets.chomp
	s = enter_list_string_from_file path
	s.sort!
end

# puts sort_by_line_length

# 2
def sort_by_number_word_in_line list
	list.sort_by {|line| line.count ' '}
end

def sort_list
	yield
end

# s = enter_list_string_from_file 'C:\Users\romAn\OneDrive\Documents\GitHub\Ruby\Lab1\file6-2.txt'
# puts sort_by_number_word_in_line s
# puts sort_list {s.sort_by {|line| line.length}}
# puts sort_list {s.sort_by {|line| line.count ' '}}

# 3
# 6.1
def ex6_3_1 list
	list.sort_by {|line| 2 * line.count('аеёиоуыэюяАЕЁИОУЫЭЮЯaeiouyAEIOUY') - list.count('^`~!@#$%^&*()\|/"\',.;:№{[]}<>=+ 0123456789-')}
end

# s = enter_list_string_from_file 'C:\Users\romAn\OneDrive\Documents\GitHub\Ruby\Lab1\file6-2.txt'
# puts ex6_3_1 s

# 6.4
def ex6_3_4 list
	w1 = calc_aver_weight_char list[0]
	list.sort_by { |line| ((calc_aver_weight_char line) - w1).abs }
end

def calc_aver_weight_char n
	w = 0.0
	n.each_byte do |b|
		c = b.to_s(2)
		c.length.times do |i|
			if c[i] == '1'
				w += 1
			end
		end
	end
	w / n.length
end

# s = enter_list_string_from_file 'C:\Users\romAn\OneDrive\Documents\GitHub\Ruby\Lab1\file6-2.txt'
# puts ex6_3_4 s

# 6.7
def ex6_3_7 list
	list.sort_by { |line| a_b line }
end

def a_b s
	k1 = 0
	k2 = 0
	s0 = s
	while n = s0.match(/[aeiouy][bcdfghjklmnpqrstvwx]/i)
		k1 += 1
		n = n.to_s
		s0 = s0.sub n,''
	end
	while n = s.match(/[bcdfghjklmnpqrstvwx][aeiouy]/i)
		k2 += 1
		n = n.to_s
		s = s.sub n,''
	end
	k1 - k2
end

# s = enter_list_string_from_file 'C:\Users\romAn\OneDrive\Documents\GitHub\Ruby\Lab1\file6-2.txt'
# puts ex6_3_7 s

# 6.10
def ex6_3_10 list
	list.sort_by { |line| ada line }
end

def ada s
	k = 0
	(s.length - 2).times do |start|
		if s.slice(start, 3) == s.slice(start, 3).reverse
      k += 1
		end
	end
	k
end

# s = enter_list_string_from_file 'C:\Users\romAn\OneDrive\Documents\GitHub\Ruby\Lab1\file6-3.txt'
# puts ex6_3_10 s

def ex6_3
	puts "************************Методы************************"
	puts "Отсортировать строки:"
	puts "1. В порядке увеличения разницы между средним количеством согласных и средним количеством гласных букв в строке"
	puts "2. В порядке увеличения квадратичного отклонения среднего веса ASCII-кода символа строки от среднего веса ASCII-кода символа первой строки"
	puts "3. В порядке увеличения разницы между количеством сочетаний «гласная-согласная» и «согласная-гласная» в строке"
	puts "4. В порядке увеличения среднего количества «зеркальных» троек (например, «ada») символов в строке"
	puts "******************************************************"
	puts "Введите номер метода."
	print "--> "
	meth = gets.chomp
	puts meth
	if ["1", "2", "3", "4"].include?(meth)
	then
		puts "Введите путь к файлу:"
		path = gets.chomp
		s = enter_list_string_from_file path

		case meth
		when "1"
			puts (ex6_3_1 s).to_s
		when "2"
			puts (ex6_3_4 s).to_s
		when "3"
			puts (ex6_3_7 s).to_s
		else
			puts (ex6_3_10 s).to_s
		end
	else
		puts "До свидания!"
	end
end