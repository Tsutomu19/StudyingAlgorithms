# c062復習
# メロンが大好きなあなたは、回転寿司のお店にメロンを食べに行きました。
# ネタはそれぞれ皿にのって 1 つずつ流れていきます。

# あなたはメロンを食べきるのに、自分の前に 10 皿流れていく程度の時間がかかります。
# メロンを食べている最中は新たにメロンを取ることができません。

# あなたがお店に滞在している間に流れてくる皿の数 T と流れてくるネタのリストが与えられるので、滞在時間中に食べられるメロンの数を出力するプログラムを作成してください。

# メロンはリスト上では "melon" という文字列で表されます。また、滞在時間が終わった時に食べているメロンは最後まで食べるものとします。

# 以下は入力例 1 を図示したものです。食べられないネタは薄い色にしています。


# 入力例1
# 15
# melon
# ikura
# sake
# kappa
# maguro
# melon
# uni
# toro
# ebi
# amaebi
# tamagoyaki
# ika
# anago
# melon
# hamachi

init = gets.to_i
sushi = []

init.times do |i|
    sushi.push(gets.to_s.chomp)
end





# 23:55 けんごさん解答
init = gets.to_i
foods = []

init.times do |i|
  foods.push(gets.to_s.chomp)
end

# timesメソッドは、変数に0から対象のオブジェクトが持つ数値 -1を順に代入しながら処理を実行します
# 10.times{
#     print("Hello¥n")
#   }
# オブジェクト.times do |変数|
#     実行する処理1
#     実行する処理2
#   end

# 配列のfoodsに
# ["melon", "ikura", "sake", "kappa", "maguro", "melon", "uni", "toro", "ebi", "amaebi", "tamagoyaki", "ika", "anago", "melon", "hamachi"]
# をpushメソッドで代入
# .push("要素")とかくと追加される
foods.each_with_index do |food,i|
  if food == "melon"
    foods.slice!(i+1,10)
    # 配列から指定された要素を返します。指定の要素を切り取るイメージです
  end
end
p foods.count("melon")
