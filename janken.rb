puts "じゃんけん..."
puts "0(グー),1(チョキ),2(パー),3(戦わない)"

def janken

  player = gets.to_i
  enemy = rand(3)

  if player == 3
    puts "またね!"
    return
  end

  puts "ホイ!"
  puts "----------------"

  words = ["グー","チョキ","パー"]

  puts "あなた : #{words[player]}を出しました"
  puts "相手 : #{words[enemy]}を出しました"

  result = (player == 0 && enemy == 1)||(player == 1 && enemy == 2)||(player == 2 && enemy == 0)

  if player == enemy
    puts "あいこで..."
    puts "0(グー),1(チョキ),2(パー),3(戦わない)"
    return true
  elsif result
    puts "----------------"
    puts "あっち向いて〜"
    puts "0(上),1(下),2(右),3(左)"
    player_hoi = gets.to_i
    enemy_hoi = rand(4)
    directions = ["上","下","右","左",]
    puts "ホイ!"
    puts "----------------"
    puts "あなた : #{directions[player_hoi]}を差しました"
    puts "相手 : #{directions[enemy_hoi]}を向きました"
    if player_hoi == enemy_hoi
      puts "あなたの勝ち!"
      return false
    end
  else
    puts "----------------"
    puts "あっち向いて〜"
    puts "0(上),1(下),2(右),3(左)"
    player_hoi = gets.to_i
    enemy_hoi = rand(4)
    directions = ["上","下","右","左",]
    puts "ホイ!"
    puts "----------------"
    puts "あなた : #{directions[player_hoi]}を向きました"
    puts "相手 : #{directions[enemy_hoi]}を差しました"
    if player_hoi == enemy_hoi
      puts "あなたの負け!"
      return false
    end
  end
end

next_janken = true

while next_janken
  next_janken = janken
end