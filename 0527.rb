0527.rb

i 種類目の機械は、積み込まれたお菓子を m_i 個の容器に均等に分配し
、余りを排出します。




・1 行目には、機械の数を表す整数 M と
、詰め込むお菓子の数を表す整数 N が、空白区切りで与えられます。


data = gets.split(" ").map(&:to_i)
auto = (1..data[0]).map{gets.chomp}.map(&:to_i)
ans = []
 auto.each_with_index do |a,i|
    ans << data[1] % a
 end





 data = gets.split(" ").map(&:to_i)
machine_count = data[0]
snack_count = data[1]

machine_data = (1..machine_count).map{gets.chomp}.map(&:to_i)

mod = []
mod_with_index= []
machine_data_with_index = []

machine_data.each_with_index do |f,index|
  mod << snack_count % f
#   [1, 1, 3]
  mod_with_index << [snack_count % f,index]
#   [1, 0], [1, 1], [3, 2]]あまりと添字
　machine_data_with_index << [f,index]
end

mod_minimum = mod.min
# 代入
pass_index = []
answer = []
if mod.count(mod_minimum) == 1
    p mod.index(mod_minimum) + 1 
    # 余りの最小値の数が1つの時（ダブってないとき）添字を表示。each_with_indexだから+1してる。
else
    mod_with_index.select!{|a| p a[0] == mod_minimum }
    # ダブってるものだけ入れ直して、 mod_with_indexの配列を破壊的に変更
    
    mod_with_index.each do |f|
        pass_index << f[1]
    end
    
    pass_index.each do |i|
        answer << machine_data_with_index[i]
    end
    
end
p answer.max[1] + 1 if answer.min != nil
