

# 工事の初期値
kouji = gets.chomp!.split(' ').map(&:to_i)

# 木陰の数
n = gets.to_i

# 木陰のxとy
lines = []

# 木陰のxとyの配列数が木陰の数と同じになるまでloop
until lines.size == n
    lines << gets.chomp.split(' ').map(&:to_i)
end

# 木陰のxとyの回数分ループを繰り返し、silentかnoisyか判定する
lines.size.times do |i|
  if (lines[i][0] - kouji[0]) ** 2 + (lines[i][1] - kouji[1]) ** 2 >= kouji[2] ** 2
    puts "silent"
  else
    puts "noisy"
  end
end



# Rabbit社の社長はウサギが大好きで、 社内で1匹のウサギを飼育することにしました。
# ウサギが人参を好むことは広く知られています。 また、ウサギに詳しい社員によると、 人参は糖分が多いため与えすぎるのは良くないようです。

# そこで、人参は1日1本だけ与えることにし、 特に糖分が許容範囲内で質量が大きい人参を選ぶことにしました。

# プログラマーであるあなたはRabbit社の依頼を受け、 1 から N で番号付けられた N 個の人参のデータを入力として、 糖分が許容範囲内で質量の最も大きい人参を見つけるプログラムを作成することになりました。

# 糖分には基準値Sと許容誤差 p があり、 糖分が S - p 以上 S + p 以下ならば許容範囲内となります。
# また、糖分が許容範囲内で質量の最も大きい人参 が複数ある場合は、それらのうち番号の最も小さいものを知ることができれば十分です。

# 例えば、入力例1は以下のようになっています。

# N S p
# m_1 s_1
# ...
# m_N s_N







input = gets.split(' ').map(&:to_i)

number = input[0]
sugar_center = input[1]
sugar_error = input[2]

carrots = (1..number).map{ gets.chomp!.split(" ").map(&:to_i)}



# ゆうきさん回答

datas = gets.split(" ").map(&:to_i)

number = datas[0]
sugar_center = datas[1]
suger_error = datas[2]

carrots = (1..number).map{gets.chomp!.split(" ").map(&:to_i)}
# 配列ない配列
permit = []
carrots.each_with_index do |data, i|
    # 質量と糖分　iにindex
    if data[1] <= sugar_center + suger_error && data[1] >= sugar_center - suger_error
        permit << [[data[0],i+1]]
        # 質量のデータ　回数+1を入れている
    end
end

if permit.length >= 2
    書き中

if permit == []
    # Karaの時
    puts "not found"
end
















# 22:49 けんご ちょっと時間あったんで解いてみました

# 全体的にゴリ押し
carrot_info = gets.chomp.split(" ").map(&:to_i)
max_index = 0
max_gram = 0
answer = ""

# ここにiの値を入れればいい(書き方わからなかったのでゴリ押し)
carrot_data = (1..carrot_info[0]).map.with_index do |i|
  [i,gets.chomp.split(" ").map(&:to_i)].flatten
end

paths = carrot_data.select do |index,gram,sugar|
  sugar >= carrot_info[1] - carrot_info[2] && sugar <= carrot_info[1] + carrot_info[2]
end

if paths.size >= 1
  paths.each do |index,gram,sugar|
    if max_gram < gram
       max_gram = gram
       max_index = index
       answer = index
    end
  end
else
  answer = "not found"
end

puts answer
22:49 堀越 優希 これやっぱゴリ押しになりますよねー最後がまだできてないです





input = gets.split(' ').map(&:to_i)

number = input[0]
sugar_center = input[1]
sugar_error = input[2]

carrots = (1..number).map{ gets.chomp!.split(" ").map(&:to_i) }
# 配列ない配列
permit = []
carrots.each_with_index do |data, i|
    
end
i番目のcarrotsはdateです。