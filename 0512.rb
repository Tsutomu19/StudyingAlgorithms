# 23:30 堀越 優希
data = gets.split(" ").map(&:to_i)
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


# ///この問題を解くためにはどうしたらいいか

# ///問題を読み取る力
# 引き出しの数
# プログラミングの書き方
# 分解する力がないので解けない

# 自分の口で説明する
# 振り返る

# ///コード解説
# 引数はメソッドに情報をプラスしている
# メソッドを呼び出すときに引数を一緒に渡してあげると、
# メソッドの中でその引数の値を使える。

# 戻り値がある場合、呼び出した先がそのまま戻り値に置き換えられる。












# c034
# あなたは小学校一年生の先生です。今週の授業で、足し算と引き算を教えます。あなたは、足し算と引き算を用いた宿題を作る必要があり、そのためのプログラムを書くことにしました。

# 以下の手順で問題をランダム生成するプログラムはもうできているのですが、その答えを求めるプログラムはまだできていません。答えを求めるプログラムを書いてください。

# [問題生成の手順]

# 1. 正しい式 a + b = c, あるいは a - b = c (a, b, c, は整数) を生成する
# 2. a, b, c のうちいずれか 1 つを空欄にする

# この空欄に入れるべき整数が「答え」となります。

# ここに、足し算、引き算の問題について例を一つずつ示します。



# 図の問題において、答えは、それぞれ 4, 3 となります。これらはそれぞれ入力例 1, 2 に対応しています。
# 評価ポイント
# 10回のテストケースで、正答率、実行速度、メモリ消費量をはかり得点が決まります。
# より早い回答時間で提出したほうが得点が高くなります。
# 複数のテストケースで正しい出力がされるか評価（+50点）
# 解答までの速さ評価（+50点）
# 入力される値
# 入力は以下のフォーマットで与えられます。

# a op b = c

# ・文字 a, op, b, "=" (半角等号), c がこの順に半角スペース区切りで与えられ、これらの並びが 1 つの問題を表します。
# 　・op には足し算あるいは引き算を表す記号が入ります。
# 　・a, b, c は "x" (英字小文字), "0", "1",..., "9" のうちいずれかで、"x" は空欄を表します。

# 入力値最終行の末尾に改行が１つ入ります。


# それぞれの値は文字列で標準入力から渡されます。標準入力からの値取得方法はこちらをご確認ください
# 期待する出力
# 入力が表す問題の答え (空欄に入れるべき整数) を出力してください。
# 出力の末尾に改行を 1 つ入れ、余計な文字、空行を含んではいけません。

# 22:33 堀越 優希
data = gets.chomp.split(" ")
a = data[0].to_i
b = data[2].to_i
c = data[4].to_i
sign = data[1]

if a = "x" && sign == "+" && b >= c
    p c - b
    elsif a = "x" && sign == "+" && c >= b
    p b - c
    elsif a = "x" && sign == "-"
    p b + c

    elsif b = "x" && sign == "+" && a >= c
    p a - c
    elsif b = "x" && sign == "+" && c >= a
    p c - a
    elsif b = "x" && sign == "-"
    p a + c

    elsif c = "x" && sign == "+" && a >= b
    p b + a
    elsif c = "x" && sign == "+" && b >= a
    p a + b
    elsif c = "x" && sign == "-"
    p a + b
end




# 22:34 竹田 つとむ 
input = gets.split(' ')

if input[0] == "x" && input[1] == "+"
    p input[4].to_i - input[2].to_i
    elsif input[0] == "x" && input[1] == "-"
    p input[4].to_i - input[2].to_i

    elsif input[2] == "x" && input[1] == "+"
    p input[4].to_i - input[2].to_i
    elsif input[2] == "x" && input[1] == "-"
    p input[0].to_i - input[4].to_i

    elsif input[4] == "x" && input[1] == "+"
    p input[0].to_i + input[2].to_i
    elsif input[4] == "x" && input[1] == "-"
    p input[0].to_i - input[2].to_i

end


# 22:56 けんご 
formula = gets.chomp.split(" ")

idx = formula.index("x")

p case idx
when 0
  if formula[1] == "-"
    formula[4].to_i + formula[2].to_i
  else
    formula[4].to_i - formula[2].to_i
  end
when 2
  if formula[1] == "-"
    (formula[4].to_i - formula[0].to_i) * -1
  else
    (formula[4].to_i + formula[0].to_i)
  end
when 4
  if formula[1] == "-"
    formula[0].to_i - formula[2].to_i
  else
    formula[0].to_i + formula[2].to_i
  end
end

# D104:送料の計算