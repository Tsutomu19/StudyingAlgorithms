tehuda = gets.to_i
p (1..tehuda).map{gets.chomp}.map(&:to_i)


# [7777, 2229, 5566, 2669, 1689, 1333, 1189, 3588]

tehuda = gets.to_i
(1..tehuda).map{gets.chomp}.map(&:to_i)
.each.split("").map do |i|
    i.uniq.count == 1
    puts "Four Card"
end


num.split("").map! do |g|
a,b,c = 1,1,1
[a, b, c].uniq.count == 1


C070:簡易カードゲーム


tehuda = gets.to_i
(1..tehuda).map{gets.chomp}.map(&:to_i)
.each do |ii|
    if  ii.map.uniq.count == 1
        puts "Four Card"
    end
end










(1..gets.to_i).map{gets.chomp.split("")}.each do |c|
    if c.uniq.size == 1
        puts "Four Card"
    elsif c.select{|v| c.count(v) > 1}.uniq.size  == 2
        puts "Two Pair"
    elsif c.count(c.select{|v| c.count(v) > 1}.uniq[0]) == 3
        puts "Three Card"
    elsif c.count(c.select{|v| c.count(v) > 1}.uniq[0]) == 2
        puts "One Pair"
    else
        puts "No Pair"
    end
end








tehuda = gets.to_i
(1..tehuda).map{gets.chomp.split("")}.map(&:to_i)
.each do |ii|
    if  ii.uniq.count == 1
        puts "Four Card"
    end
end






tehuda = gets.to_i
(1..tehuda).map{gets.chomp.split("")}.map(&:to_i)
.each do |ii|
    if  ii.uniq.count == 1
        puts "Four Card"
    end
end





B079:相性チェック

2. "a" を 1、"b" を 2、...、"z" を 26 として、文字列を数列に変換します

この数列を A とします。


alfa = ("a".."z").to_a
inte = (1..26).to_a

name = gets.split(" ").join
name.split("")
.each do |n|
    n.map! do |m|
        if m == "A"
            m = 1
        end
    end
end

p name


name.each do |n|
    if n == "a"

    end

end

# data = gets.split(" ").map{|a| a.split("")}

# data.each do |f|
#     f.map! do |g|
#         if g == "A"
#             g = 0
#         elsif g == "B"
#             g = 1
#         elsif g == "C"
#             g = 2
#         elsif g == "D"
#             g = 3
#         elsif g == "E"
#             g = 4
#         end
#     end
# end


文字列を数列に変換する

name = gets.split(" ").join
name.split("")
.each do |n|
    if n == "A"
        n = 1
    elsif n == "B"
        n = 2
    end
end

p name









alphas = ("a".."z").to_a

data = gets.chomp.split("")
data.delete(" ")

data.map!{|a| alphas.index(a)+1 }

2.times do 
(data.size-1).times do |i|
    data[i] = data[i] + data[i+1]
end
data.pop
end

p data





alphas = ("a".."z").to_a

data = gets.chomp.split("")
p data.delete(" ")

data.map!{|a| alphas.index(a)+1 }

(data.size-1).times do 
    (data.size-1).times do |i|
        data[i] = data[i] + data[i+1]
    end
    data.pop
    data.each_with_index do |j,index|
        data[index] = data[index] - 101 if j > 101
    end
end

puts data