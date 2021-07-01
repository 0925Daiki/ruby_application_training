class SlotGame
  def play_slot
    result = []
    3.times do
      ##3つのランダムな値を生成して配列resultに代入
      result << rand(0..9)
    end
    ##joinメソッド＝配列に含まれる値を、ひと続きに表示
    puts "スロットゲームの結果は#{result.join}です！"
    ##3つの値が揃っているかを判断
    if result[0] == result[1] && result[0] == result[2]
      puts "おめでとうございます！"
    else
      puts "残念でした〜"
    end
  end
end