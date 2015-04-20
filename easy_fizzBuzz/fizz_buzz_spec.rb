class FizzBuzz
  attr_accessor :numbers

  def initialize
    @numbers = (1..100).to_a
  end

  def sequence
    numbers.collect do |x|
      if multiple_of(x,3) && multiple_of(x,5)
        'FizzBuzz'
      elsif multiple_of(x,3)
        'Fizz'
      elsif multiple_of(x,5)
        'Buzz'
      else
        x
      end
    end
  end


  def output
    sequence.each do |element|  
      puts element
    end
  end


  private
  def multiple_of(x,n)
    x % n == 0
  end

end

describe FizzBuzz do

  it 'should generate numbers from 1 to 100' do
    game = FizzBuzz.new

    result = game.numbers

    expect(result).to eq((1..100).to_a)
  end 

  it 'should print Fizz for multiples of 3' do
    game = FizzBuzz.new
    result = game.sequence
    expect(result[2]).to eq('Fizz')
  end

  it 'should print Fizz for multiples of 5' do
    game = FizzBuzz.new
    result = game.sequence
    expect(result[4]).to eq('Buzz')
  end

  it 'should replace multiples of both 3 and 5 with FizzBuzz' do
    game = FizzBuzz.new

    result = game.sequence

    expect(result[14]).to eq('FizzBuzz')
  end

end