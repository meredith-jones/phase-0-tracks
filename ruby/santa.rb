class Santa

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end

santah = Santa.new
santah.speak

clause = Santa.new
clause.eat_milk_and_cookies("Oatmeal Raisin")