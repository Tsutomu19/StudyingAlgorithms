1 6
2 5
3 4

7 12
8 11
9 10




n =4

1 8
2 7
3 6
4 5


p input = gets.split(" ").map(&:to_i)


















data = gets.split(" ").map(&:to_i)

pocket = data[0]
number = data[1]

p arr_right = (1..pocket).to_a.map{|a| a - pocket*2}
p arr_left = (1..pocket).to_a.map{|a| a - pocket}

left_type_proto = []
while arr_left.last < 1000000  do 
    save = arr_left.map!{|a| a += pocket*2}.map{|a| a }
    left_type_proto << save
end

right_type_proto = []
while arr_right.last < 1000000  do 
    save = arr_right.map!{|a| a += pocket*2}.map{|a| a }
    right_type_proto << save
end

@right_type = right_type_proto.flatten
@left_type = left_type_proto.flatten

def number_judge(num)
    return "right" if @right_type.include?(num)
    return "left" if @left_type.include?(num)
end

if number_judge(number) == "left"
    p  number - pocket*2 + 1
else
    p  number + pocket*2 - 1
end
