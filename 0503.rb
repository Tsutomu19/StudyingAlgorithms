# 一問目
line = readlines.map(&:chomp)
p line

input line = gets.chomp!.map(&:to_i)


自分の考え

line = readlines.map(&:to_i)
p line

配列にれる
p line.max 
p line.min


答え
line = readlines.map(&:chomp)
lines = line.map(&:to_i)
配列にれる
p lines.max
p lines.min

# 2問目

input_line = gets.chomp!.split("").map(&:to_s)

arr = input_line.map do |str|
    if str == "A"
        str = 4
        elsif str == "E"
        str = 3
        elsif str == "G"
        str = 6
        elsif str == "I"
        str = 1
        elsif str == "O"
        str = 0
        elsif str == "S"
        str = 5
        elsif str == "Z"
        str = 2
    else
        str = str
    end
end
puts arr.join


ゆうきさん解答

input_line = gets.chomp!.split("")


arr = []


input_line.map do |one|
  if one == "A"
      arr.push("4")
      elsif one == "E"
      arr.push("3")
      elsif one == "G"
      arr.push("6")
      elsif one == "I"
      arr.push("1")
      elsif one == "O"
      arr.push("0")
      elsif one == "S"
      arr.push("5")
      elsif one == "Z"
      arr.push("2")
  else
      arr.push(one)
  end

end


puts arr.join





３問目
問題見て分からないときは例を見よう

a = gets.split(' ')
b = gets.to_i

if a[0].to_i >= b
    puts a[0].to_i + a[1].to_i
else
    puts a[0].to_i
end


input_line = gets.split(" ").map(&:to_i)

feeAndPoint = readlines.map(&:champ)

feeAndPoints = feeAndPoint.map(&:to_i)

remaining = input_line[0]

point = 0

feeAndPoints.each do |fee|
    if point >= fee
        point -= fee
    else
        point += fee * 0.1
        remaining = remaining - fee
    end

    puts "#{remaining} #{point.to_i}"
end



