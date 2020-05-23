4.42
numbers = [1,2,3,4,5,6]
even_numbers = numbers.select {|n|n.even?}
even_numbers

selectメソッドは各要素に対してブロックを評価し、戻り値が真の要素を集めた配列を返すメソッドです。