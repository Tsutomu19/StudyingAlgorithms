

# D問題自習

input = gets.split(" ").map(&:to_i)

if input[0].odd? && input[1].even?
    puts "YES"
elsif input[0].even? && input[1].odd?
    puts "YES"
else 
    puts "NO"
end



n + x = 0
x = 



n = gets.to_i
array = (-10..10).to_a
array.each do |x|
    if x + n == 0
        p x
    end
end













# C018:何人前作れる？

4
supaisu 5
imo 2
niku 2
mizu 3
6
mizu 7
imo 4
ninjin 10
unagi 6
supaisu 20
niku 5



配列
select
まず食材があるかどうか

recipe_count = gets.to_i
recipe = (1..recipe_count).map{gets.split(" ")}
foodstuff_count = gets.to_i
foodstuff = (1..foodstuff_count).map{gets.split(" ")}
# [["supaisu", "5"], ["imo", "2"], ["niku", "2"], ["mizu", "3"]]
# [["mizu", "7"], ["imo", "4"], ["ninjin", "10"], ["unagi", "6"], ["supaisu", "20"], ["niku", "5"]]
food_arr = []
recipe_foodstuff.each do |a|
    food_arr << a if foodstuff.flatten.include?(a[0])
end

if food_arr.count >= recipe_count
# koko
    food_arr.sort.zip(recipe.sort) do |f,g|
        next_food_arr << f[1].to_i / g[1].to_i
else
    puts 0
end






# レシピに必要な材料と個数を配列に代入
recipe_foodstuff_count = gets.to_i
recipe_foodstuff = (1..recipe_foodstuff_count).map{gets.chomp.split(" ")}

# 自分の持っている材料と個数を配列に代入
my_foodstuff_count = gets.to_i
my_foodstuff = (1..my_foodstuff_count).map{gets.chomp.split(" ")}

# もし、レシピに必要な食材の名前を自分の配列が持っていたら
# それを新しいfood_arrに自分の食材を入れる
food_arr = []
my_foodstuff.each do |a|
    food_arr << a if recipe_foodstuff.flatten.include?(a[0])
end

# food_arrの個数が、レシピと一致していなければその時点で食材が足りないのでアウト
# 足りていた場合は以下の処理に移る。アウトなら0を出して終わり
# 何人分作るかを考える処理
next_food_arr = []
if food_arr.count == recipe_foodstuff_count
    # 同じならば、配列を二個同時に回す。
    # 1つは自分の持っているレシピに必要な食材と個数だけを切り出した配列
    # もう1つはレシピの配列、これらを使って食材の「数」に注目して処理を行う
    food_arr.sort.zip(recipe_foodstuff.sort) do |f,g|
        next_food_arr << f[1].to_i / g[1].to_i  
    end
else
    puts 0
end
# レシピに必要な材料と個数を配列に代入
recipe_foodstuff_count = gets.to_i
recipe_foodstuff = (1..recipe_foodstuff_count).map{gets.chomp.split(" ")}

# 自分の持っている材料と個数を配列に代入
my_foodstuff_count = gets.to_i
my_foodstuff = (1..my_foodstuff_count).map{gets.chomp.split(" ")}

# もし、レシピに必要な食材の名前を自分の配列が持っていたら
# それを新しいfood_arrに自分の食材を入れる
food_arr = []
my_foodstuff.each do |a|
    food_arr << a if recipe_foodstuff.flatten.include?(a[0])
end

# food_arrの個数が、レシピと一致していなければその時点で食材が足りないのでアウト
# 足りていた場合は以下の処理に移る。アウトなら0を出して終わり
# 何人分作るかを考える処理
number_food_arr = []
if food_arr.count == recipe_foodstuff_count
    # 同じならば、配列を二個同時に回す。
    # 1つは自分の持っているレシピに必要な食材と個数だけを切り出した配列
    # もう1つはレシピの配列、これらを使って食材の「数」に注目して処理を行う
    food_arr.sort.zip(recipe_foodstuff.sort) do |f,g|
        number_food_arr << f[1].to_i / g[1].to_i  
    end
else
    puts 0
end

# 食材全てたりているが、個数に足りないものがあった場合
if number_food_arr.include?(0)
    puts 0
else
    p number_food_arr.min if number_food_arr.min != nil
end














# まずは名前、数と細分化　骨組み作る