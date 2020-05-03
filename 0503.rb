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