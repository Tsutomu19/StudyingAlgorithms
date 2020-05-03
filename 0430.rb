
メールアドレス

a = gets.chomp!
b = gets

puts a.to_s + "@" + b.to_s


a = gets.chomp!
b = gets.split(' ')

p b[0].to_i * b[1].to_i % a.to_


試験問題

a = gets.split(' ')

p a[0].to_i

p a[0].to_i + a[1].to_i


解答

a = gets.split(' ')

p a[0].to_i

p a[0].to_i + a[1].to_i







最後の問題

input line = gets.chomp!.split("").map(&:to_i)

arr = input_line.map do |num|
	if num == 0
		num = "C"
	elsif num == "A"
	else
		num = "B"
	end
end
puts arr.join





