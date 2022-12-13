def game_play(player)

  num_1 = rand(1..20)
  num_2 = rand(1..20)

  puts "#{player.name}: What does #{num_1} plus #{num_2} equal?"
  print '>'
  answer = $stdin.gets.chomp

  if answer.to_i == num_1 + num_2
    puts "#{player.name}: YES! You are correct."
  else
    puts "#{player.name}: Seriously? No!"
    player.lives -= 1
  end
  
end