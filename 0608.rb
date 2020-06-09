2 4
150 2
200 3
buy 1 2
buy 1 2
bake 0 1
buy 0 2

i 番目のパンの値段を表す整数 a_i と
今日の初めの時点での i 番目のパンの在庫数を表す整数 b_i がこの順で半角スペース区切りで与えられます。

続く Q 行のうちの i 行目 (1 ≦ i ≦ Q) には、i 番目のクエリのタイプを表す文字列 q_i と、
それぞれのクエリで扱われる 1 種類目のパンの個数を表す整数 c_{i, 1},
2 種類目のパンの個数を表す整数 c_{i, 2}, ...,
N 種類目のパンの個数を表す整数 c_{i, N} が
この順で半角スペース区切りで与えられます




input = gets.split(" ").map(&:to_i)
syurui_num = input[0]
kueri_num = input[1]

stock = (1..syurui_num).map{gets.split(" ").map(&:to_i)}
buy = (1..kueri_num).map{gets.split(" ")}

buy.each do |order|
if order[0] = "buy"
elsif
end











data = gets.split(" ").map(&:to_i)
stock_count = data[0]
buy_bake_count = data[1]

stock_count_data = (1..stock_count).map{gets.chomp!.split(" ").map(&:to_i)}
buy_bake_data = (1..buy_bake_count).map{gets.chomp!.split(" ")}

price = 0

buy_bake_data.each do |data|
    if data[0] == "buy"
        data.drop(1).map(&:to_i).each_with_index do |order,index|
           if stock_count_data[index][1] >= order
               price += stock_count_data[index][0] * order
           else
               p -1
               price = 0
               break
           end
        end
        
        # パンが全て購入できた場合
        if price > 0
            p price
            price = 0
            data.drop(1).map(&:to_i).each_with_index do |order,index|
                stock_count_data[index][1] -= order
            end
        end
    else
        p "bake"
    end
end
