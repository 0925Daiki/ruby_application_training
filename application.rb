##オブジェクト指向→クラスに含まれる値や処理のまとまり(=オブジェクト)を意識しながら、実装する
##単一責任の原則

require "./drink"
require "./vending_machine"
require "./user"
require "./slot_game"

puts "商品を用意してください"
drinks = []
3.times do |i|
  puts "商品名を入力してください"
  drink_name = gets.chomp
  puts "金額を入力してください"
  drink_fee = gets.to_i
  ##Drinkクラスのインスタンスを生成→用意した配列drinksに生成したインスタンスを追加
  drinks << Drink.new(drink_name,drink_fee)
end

vending_machine = VendingMachine.new(drinks)
vending_machine.show_drinks

puts "あなたはお客さんです。投入金額を決めてください。"
money = gets.to_i
user = User.new(money)

vending_machine.pay(user)