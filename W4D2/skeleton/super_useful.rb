# PHASE 2
class CoffeeError < StandardError
  def message
    "No more coffe please"
  end
end

class NotAFruitError < StandardError
  def message
    "I dont want that fruit. Try again"
  end
end



def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError
  else
    raise NotAFruitError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue CoffeeError => e
    puts e.message
    retry
  rescue NotAFruitError => e
    puts e.message
    retry
end  
class NotARealBestie < StandardError
  def message
    "We can't be besties I haven't known you long enough"
  end
# PHASE 4
class BestFriend


  def initialize(name, yrs_known, fav_pastime)
    if @yrs_known < 5
      NotARealBestie => e 
      puts e.message
    @name = name
    @yrs_known = yrs_known
    
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


