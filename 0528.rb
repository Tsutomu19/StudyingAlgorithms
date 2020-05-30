C065:【ぱいじょ！コラボ問題】数字あてゲーム


3
> 30
< 40
/ 5


hint = gets.to_i
x =(1..100).to_a

hanntei = (1..hint).map{gets.split(" ")}
# [[">", "30"], ["<", "40"], ["/", "5"]]

x.each do |i|
    (1..hint).each do
    tests = gets.split(" ")
    kigou =  tests[0]
    suuji = tests[1].map(&:to_i)
        if kigou == ">"
            x.select! {|num| num > suuji}
        elsif kigou == "<"
            x.select! {|num| num < suuji}
        elsif kigou == "/"
            x.select! {|num| num % suuji == 0}
        end
    end
end
puts x

# x（1〜100）を↑の条件と合うか一つづつ見ていく


input_line = gets.to_i
count = 0
# for i in 1..input_line
(1..hint).each do
  tests = gets.split(" ")
  kigou =  tests[0]
  suuji = tests[1].map(&:to_i)
    if kigou == ">"
        x.select! {|num| num > suuji}
    elsif kigou == "<"
        x.select! {|num| num < suuji}
    elsif kigou == "/"
        x.select! {|num| num % suuji == 0}
    end
end
puts count














# 惜しかった。。




















hint = gets.to_i
x =(1..100).to_a

hanntei = (1..hint).map{gets.split(" ")}
# [[">", "30"], ["<", "40"], ["/", "5"]]

x.each do |i|
    hanntei.each do |f|
    kigou =  f[0]
    suuji = f[1].to_i
        if kigou == ">"
            x.select! {|num| num > suuji}
        elsif kigou == "<"
            x.select! {|num| num < suuji}
        elsif kigou == "/"
            x.select! {|num| num % suuji == 0}
        end
    end
end
puts x

















hint = gets.to_i
x =(1..100).to_a

hanntei = (1..hint).map{gets.split(" ")}

x.each do |i|
    hanntei.each do |f|
        kigou = f[0]
        suuji = f[1].to_i
        if kigou == ">"
            x.select! {|num| num > suuji}
        elsif kigou == "<"
            x.select! {|num| num < suuji}
        elsif kigou == "/"
            x.select! {|num| num % suuji == 0}
        end
    end
end
puts x



