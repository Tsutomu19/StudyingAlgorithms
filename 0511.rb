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
    # 配列から指定された要素をsliceしている。指定の要素を切り取るイメージ
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

# c37
# 23:40 けんご
 time = gets.chomp.to_s.split("")

# 時間の計算 / 24で割り切れれば 日にち、 % 24の余が時間 divmod[0]→商 / divmod[1]→余
 div = (time[6].to_i * 10 + time[7].to_i).divmod(24)


 month = time[0]+time[1]
 date = ((time[3].to_i * 10 + time[4].to_i) + div[0]).to_s.rjust(2,"0")
#  0を右に入れる
 hours = div[1].to_s.rjust(2,"0")
 mins = time[9]+time[10]

puts "#{month}/#{date} #{hours}:#{mins}"








# C077:【30万人記念問題】レポートの評価
# あなたはパイザ大学の教授です。学生に課したレポートを評価するため、あなたは自動でレポートの評価をするプログラムを考えることにしました。

# 今回あなたが出題したレポートには n 問の問題があり、1 問あたりの配点はそれぞれ 100 / n 点です。ここで n は 100 の約数です。

# あなたはレポートに提出期限を設けていました。提出期限から遅れたレポートのうち、遅れた日数が 9 日以下のレポートは得点を 8 割にすることにしました。このとき得点に小数点以下が発生した場合切り捨てます。10 日以上遅れたレポートの評価は 0 点とすることにしました。
# 図1

# レポートの点数が 80 点以上の場合、そのレポートの評価は A となります。70 点以上 79 点以下の場合 B となります。60 点以上 69 点以下の場合 C となります。59 点以下の場合は D となります。

# 図2

# あなたは k 人分のレポートの評価をしようと思っています。i 番目の学生 (1 ≦ i ≦ k) はレポートを期限の日を基準に d_i 日後に提出し、n 問中 a_i 問に正解しました。
# ただし、d_i < 0 のときは、レポートを期限の日を基準に -d_i 日前に提出したということを表します。また、d_i = 0 のときは、レポートを期限の日に出したと解釈し、レポートの点数が 8 割にされることはありません。
# このときの学生のレポートの評価を出力するプログラムを作成しましょう。

input = gets.split(' ').map(&:to_i)
student = input[0]
question = input[1]



23:30 堀越 優希 data = gets.split(" ").map(&:to_i)
student_count = data[0]
question_count = data[1]
student_data = (1..student_count).map{gets.chomp!.split(" ").map(&:to_i)}
@single_point = 100 / question_count

def calc(delay,collect)
  score = collect * @single_point
  if delay >= 1 && delay <= 9 
      score *= 0.8
      score = score.floor
      elsif delay >= 10
      score = 0
  end

  if score >= 0 && score <= 59 
      "D"
      elsif score >= 60 && score <= 69
      "C"
      elsif score >= 70 && score <= 79
      "B"
      elsif score >= 80 && score <=100
      "A"
  end
end

student_data.each do |delay, correct|
    puts calc(delay,correct)
end
23:31 竹田 つとむ 喋ってもらえますか！


