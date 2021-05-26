def janken
puts "じゃんけん..."
puts "0(グー)１（チョキ) 2(パー)３(戦わない)"
player = gets.to_i
program = rand(3)
janken = ["グー","チョキ","パー","戦わない"]
puts "ホイ！"
puts "---------------------------------"
puts "あなた：#{janken[player]}を出しました"
puts "相手：#{janken[program]}を出しました"
puts "---------------------------------"

  if player == program
   puts "あいこで..."
   return true
  elsif(player == 0 && program == 1)||(player == 1 && program == 2)||(player == 2 && program == 0)
   puts "あっち向いて..."
   puts "0(上),1(下),2(右),3(左)"
   huki = gets.to_i
   aite = rand(4)
   yubi = ["上","下","右","左"]
   puts "ホイ！"
   puts "---------------------------------"
   puts "あなた:#{yubi[huki]}"
   puts "相手：#{yubi[aite]}"
   puts "---------------------------------"
    if huki == aite
      puts "あなたの勝ちです"
    else
      return true
    end
 elsif player == 3
   return false
 else 
   puts "あっち向いて..."
   puts "0(上),1(下),2(右),3(左)"
   huki = gets.to_i
   aite = rand(4)
   yubi = ["上","下","右","左"]
   puts "ホイ！"
   puts "---------------------------------"
   puts "あなた:#{yubi[huki]}"
   puts "相手：#{yubi[aite]}"
   puts "---------------------------------"
   if huki == aite
     puts "あなたの負けです"
    else
     return true
    end
  end
end

next_game = true
 
while next_game
  next_game = janken
end

