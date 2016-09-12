# Meredith Jones and Timothy Tao paired

class Puppy

  def initialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts "Woof!" }
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(int)
    human_age = int * 7
    p human_age
  end

  def play_dead
  puts "Say bang!"
  input = gets.chomp
  if input == "bang!"
    p "*plays dead*"
  else
    p "*Dog looks at you funny*"
  end
  end

end

class Human

  def initialize
    p "Initializing human instance..."
  end

  def work(job)
    puts "I work as a #{job}"
  end

  def greeting(name)
    puts "Hi, my name is #{name}"
  end

end


# puppy = Puppy.new.fetch("train")

# bark = Puppy.new.speak(4)

# trick = Puppy.new.roll_over

# age = Puppy.new.dog_years(3)

# new_trick = Puppy.new.play_dead


humans = []

50.times do
  humans << Human.new
end

humans.each do |human|
  human.greeting("Glenna")
  human.work("Programmer")
end

