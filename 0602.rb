input = gets.to_i
p kakin = gets.split(" ").map(&:to_i)
# =>[1, 1, 2, 2, 3]
kakin.select{ |e| kakin.count(e) > 1 }.uniq
# =>[1, 2]




input = gets.to_i
kakin = gets.split(" ").map(&:to_i)
# [1, 1, 2, 2, 3]
answer = kakin.select{ |k| kakin.count(k) > 1 }.uniq
# =>[1, 2]
puts "#{answer}"





input = gets.to_i
kakin = gets.split(" ").map(&:to_i)
# [1, 1, 2, 2, 3]
answer = kakin.select{ |k| kakin.count(k) > 1 }.uniq
# =>[1, 2]

p answer.join(" ").to_i









input = gets.to_i
kakin = gets.split(" ").map(&:to_i)
# [1, 1, 2, 2, 3]
answer = kakin.select{ |k| kakin.count(k) > 1 }.uniq
# =>[1, 2]
if answer.length >=2
    puts "#{answer.first} #{answer.last}"
else
    puts "#{answer}"
end








input = gets.to_i
kakin = gets.split(" ").map(&:to_i)
# [1, 1, 2, 2, 3]
answer = kakin.sort.select{ |k| kakin.count(k) > 1 }.uniq
# =>[1, 2]

puts answer.max.join(" ")

5
2 2 2 1 1
1 2

