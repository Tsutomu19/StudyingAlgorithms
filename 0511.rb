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





# 23:55 けんごさん解答 自分なりの解説付き
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


# c028　復習　15:18　20分間掛けた
# 英単語のテストの採点ではどこまでをスペルミスとみなしてどこまでを別の単語とみなすかが悩みどころです。
# そこで paiza 予備校では以下の様な採点基準を導入してこれに従って厳密に採点することにしています。

# ・正解の単語と完全一致→ ◯ 2 点
# ・正解の単語と長さ(文字数)が異なる→ × 0 点
# ・正解の単語と長さは同じだが 1 文字だけ異なる→ △ 1 点
# ・正解の単語と長さは同じだが 2 文字以上異なる→ × 0 点

# ここで「文字が異なる」とは、同じ位置にある文字が異なるということを意味しています。

# 例)
# 正解: apple, 解答: aple → 0 点 (長さが異なる)
# 正解: orange, 解答: olange → 1 点 (長さは同じだが 1 文字だけ異なる)
# 正解: grape, 解答: glepe → 0 点 (長さは同じだが 2 文字異なる)
# 正解: lemon, 解答: lemon → 2 点 (完全一致)

# 合計得点 → 3 点

# 問題数と各問題の正解の単語および生徒の解答が与えられるので、このような形で paiza 予備校の採点基準に従いこの生徒の合計得点を算出してください。




# 解答を自分なりに咀嚼
problems = gets.to_i
points = 0

# 入力値を右辺に入れている。（引数でもある？）それを変数に代入
def word_match(official,myanswer)
    # 単語を一文字ずつ分けて代入
    m_official = official.split("")
    m_answer = myanswer.split("")
    zure = 0
    
    # m_official.sizeの回数だけ処理を繰り返している。
    m_official.size.times do |i|
        unless m_official[i] == m_answer[i]
            zure += 1
        end
    end
    return zure
end
# んーいまいち自分の口で説明できない
(1..problems).map{ gets.chomp.split(" ") }
.each do |official,myanswer|
    if official == myanswer
        points = points + 2
    elsif official.length == myanswer.length && word_match(official,myanswer) == 1
        points = points + 1
    end
end
p points


# なれるまでかくしかないか？
# 意味はなんとなく理解？なんとなくでいいのか
# 使ってる構文はわかる。やってることもわかる。
# それをなんのために、何を使ってやってるのか説明してみよう










# c028　復習　15:18　20分間掛けた
# あなたはサーバ管理者です。 日々洪水のように流れるログを追っています。
# とうとう自分の目と頭では処理しきれない量になってしまったため、プログラムを作って、重要な文字列を含むログだけ抽出する事にしました。

# 例えば、入力例 2 では、ログは上から順に "pizza"、 "paiza"、 "aizu"、 "ai"、 "sai" の 5 つです。
# この 5 つのログに対して、重要な文字列 "ai" が含まれているのは "pizza" 以外の 4 つです。
# 結果として "pizza" だけが除かれ、 "paiza"、 "aizu"、 "ai"、 "sai" がこの順に抽出されます。

number = gets.to_i
sent = gets.chomp
answers = (1..number).map{ gets.chomp }.select{ |answer| answer.include?(sent) }

puts answers.any?? answers : "none"
# trueだったら該当の文字を出力、falseだったらnoneを出してるz。。
# p　でもダメだし、??は二つ必要。






number = gets.to_i
input = gets.chomp

answers = (1..number).map{gets.chomp}.select{|answer| answer.include?(input)}
puts answers.any?