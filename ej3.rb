class Roulette
	
  def play(number)
    r = (1..10).to_a
    random = rand(r.length)
    almacenar(random)
    if random == number
    	winner(random)
    	return true
    else 
    	return false
    end
  end

  def almacenar(random)
  	backup = File.open('roulette_history.txt', 'a')
  	backup.puts random
  	backup.close
  end

  def winner(random)
  	backup = File.open('winners.txt', 'a')
  	backup.puts random
  	backup.close
  end

  def mayor
  	backup = File.open('roulette_history.txt', 'r')
  	content = backup.readlines
  	backup.close
  	content.sort!
 
  end

end


roulette = Roulette.new
p roulette.play(3)
p roulette.mayor