# C046:書籍購入費ランキング
2
ando noda
2
noda 1000
ando 500

number = gets.to_i
name = gets.split(" ")
book_count = gets.to_i

# 名前の数だけ=0作って、足してそれを比べようとした
# a = 0, b =0 c =0

(1..book_count).each do
    data = gets.split(" ")
    name = data[0]
    book_price = data[1].map(&:to_i)

end






# input_line = gets.to_i
# count = 0
# # for i in 1..input_line
# (1..input_line).each do
#   tests = gets.split(" ")
#   rikei =  tests[2..3].map(&:to_i).sum
#   bunkei = tests[4..5].map(&:to_i).sum
#   summary = tests[1..5].map(&:to_i).sum
#   if summary >= 350 && (tests[0] == "l" && bunkei >= 160 || tests[0] == "s" && rikei >= 160)
#     count = count + 1
#   end
# end
# puts count



# 回答

n = gets.chomp.to_i #人数
a = gets.chomp.split(' ')　#名前たち
p ={}
n.times{ |i|  p[a[i]] = 0 }　#名前がキー、初期値が０の連想配列pを作成

m = gets.chomp.to_i　#本の購入数
m.times{ |s|
    a,b = gets.split(' ')　#　名前と購入代金を取得
    p.each_key{ |l| p[l] += b.to_i if l == a}　#aに合致する連想配列pのキーの値に、bを整数化したものを加算
}

puts Hash[p.sort_by{|v,x| -x}].keys　#値で降順に並び替えて配列として出力したものを、ハッシュとして受け取り、キーをそれぞれ出力する




























# C050:オークションの結果


# ・A さんの作成した自動取引プログラムは今の商品の価格に 10 円を足した価格で交渉します。
# ・B さんの作成した自動取引プログラムは今の商品の価格に 1,000 円を足した価格で交渉します。


# ・商品の最初の時点での値段を表す整数 S、
#  A さんの予算を表す整数 a、
#  B さんの予算を表す整数 b がこの順に半角スペース区切りで与えられます。

# 1 1500 2050
# 英大文字 P は、商品を落札した人物が A さんであれば "A"、商品を落札した人物が B さんであれば "B" としてください。





input = gets.split(" ").map(&:to_i)
price = input[0]
a_budget = input[1]
b_budget = input[2]

answer = []

# priceが予算の小さい方までくり返す
while price < a_budget do
    price += 10
    price += 1000
    answer << price
  end

p answer.last

メソッドを作る？
落札した方の出力方法が分からない











s = gets.split(" ").map(&:to_i)
start_price = s[0]
program_A = s[1]
program_B = s[2]

last_price = start_price
buyer = [ ]
while last_price <= program_A do
    last_price += 10
    if last_price + 1000  <= program_B 
        last_price += 1000
        buyer << "B"
    else
        buyer << "A"
        break
    end
end

puts buyer.last + " " +  last_price.to_s









# C020:残り物の量

1 80 40
売れ残った量 [kg] を小数値で一行に出力してください。ただし、真値との誤差が0.0001 未満である場合にのみ、正答とみなされます。

input = gets.split(" ").map(&:to_i)
food = input[0]
raw = input[1]
side = input[2]

dish = food - (food * raw / 100)
answer = dish - (dish * side / 100)
p answer


data = gets.split(" ").map(&:to_i)

p data[0]*((100 - data[1])* 0.01)*((100 - data[2])*0.01)






C014:ボールが入る箱
4 2
6 6 6
4 6 4
6 1 1
4 4 4
今、n 個の箱があり、i (1 ≦ i ≦ n) 番目の箱は高さh_i、
幅w_i、奥行きd_i です。各箱においてボールの直径が、
箱の高さ、幅、奥行きの3つの長さのうち最も短いもの以下であれば、
無事にボールを収納することができます。


input = gets.split(" ").map(&:to_i)

box = (1..input[0]).map{gets.split(" ").map(&:to_i)}
answer = []
box.each_with_index do |b, i|
    if input[1] * 2 <= b.min
        answer << b
    end
end
p answer i












data = gets.split(" ").map(&:to_i)
count = data[0]
r = data[1]*2

box_data = (1..count).map{gets.split(" ").map(&:to_i)}

box_data.each_with_index do |a,b|
    p b + 1 if a[0] >= r && a[1] >= r && a[2] >= r 
end

# こういう問題は
# なるほど、eachのなかに入れてあげてtrueだったらそのまま出力
































C064:paizaでお食事
3 3
250
500
1000
100 200 300
30 250 0
1 1 1000

・1 行目にそれぞれ料理の品数、就活生の人数を表す整数 M , N が
この順で半角スペース区切りで与えられます。
・続く M 行のうちの i 行目 (1 ≦ i ≦ M) には
、100 g あたりのカロリーを表す整数 c_i がこの順で半角スペース区切りで与えられます。
・さらに続く N 行のうちの i 行目 (1 ≦ i ≦ N) には 
M 個の整数が半角スペース区切りで与えられます。
i 行目の j 番目 (1 ≦ j ≦ M) の整数 a_{i, j} は i 番目の就活生が食べた、j 番目の料理の量を表します。
各料理のカロリーが小数になる場合、小数点以下を切り捨ててから和を計算してください。



input = gets.split(" ").map(&:to_i)
food = input[0]
student = input[1]

cal = (1..food).map{gets.chomp}.map(&:to_i)
data = (1..student).map{gets.split(" ").map(&:to_i)}

p data[0][0] * cal[0] + data[0][1] * cal[1] + data[0][2] * cal[2]











data = gets.split(" ").map(&:to_i)
food_count = data[0]
student_count = data[1]

# 1gあたりのカロリーを計算
calorie = (1..food_count).map{gets.chomp}.map(&:to_i).map{|f| f * 0.01 }

# 生徒の食べたものを配列に。この時要素数はcalorieと一致する
students = (1..student_count).map{gets.chomp.split(" ").map(&:to_i)}

students.each do |f|

# 配列の各要素同士を掛け合わせたいです。[a,b,c]と[d,e,f]なら[ad,be,cf]的な
# zipは自身と引数に渡した配列の各要素からなる配列の配列を生成して返します。
# [[a,d],[b,e],[c,f]]みたいな状況になります。
# それを、それぞれ同じ配列内の要素で掛け合わせるためmapでブロック変数を二個指定

# で、なんか少数以下切り捨てるらしいのでfloorで再度配列を作成（後でまとめるとエラー）
# paizaではこういう問題の時、最後にまとめてやるのではなく
# 各要素に処理を行うのがセオリーのようです。まあ確かに厳密に言えばそう。
p f.zip(calorie).map{|g,h| g*h}.map{|f| f.floor}.sum

end
# なお、.map{|g,h| g*h}の時に、[[a,d],[b,e],[c,f]]が値として送られていたら無理ですが、
# 今回はeach文の中なので[a,d]がくるから計算できるというロジックです