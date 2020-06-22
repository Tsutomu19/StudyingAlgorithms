a b c d
p tramp = gets.split(" ").map(&:to_i)
p tramp.combination(4).to_a
tramp.each do ||



    data = gets.split(" ").map(&:to_i).permutation(4).to_a
arr = []
data.each do |one,two,three,four|
    arr << "#{one}""#{two}".to_i + "#{three}""#{four}".to_i
end
p arr.max



































tramp = gets.split(" ").map(&:to_i)
tramp.permutation(4).to_a
answer = []
tramp.each do |a,b,c,d|
    answer << a * 10 + b + c * 10 + d
end
p answer.max