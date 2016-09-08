# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do #describe block for each group of tests
  let(:calculator) { Calculator.new } #creates an instance of the class to be used for the tests. Making it a symbol means that the variables in the tests will have the value of the code between the curly braces, so each time the variable (calculator) is used, an instance of the Calculator class is instantiated.

  it "adds two integers" do
  #string that describes what you're testing
  # it block for each individual test
    expect(calculator.add(3,4)).to eq 7 #expectation
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divide two integers" do
    expect(calculator.divide(6,2)).to eq 3
  end

  it "matches arrays" do


end


#RSpec process overview
# 'describe' block for each group of tests
      # 'it' block for each individual test
          # expect (<YOUR CODE>).to eq <RESULT>

#when you run the test you run:
# rspec <filename>
#(not 'ruby <filename>')
# for more detailed print out, use:
# rspec -fd <filename>