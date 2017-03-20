class FizzBuzz
  def print(value)
    if (value % 3 == 0) && (value % 5 == 0)
      "FizzBuzz"
    elsif value % 3 == 0
      "Fizz"
    elsif value % 5 == 0
      "Buzz"
    else
      value.to_s
    end
  end

  def run(maximum)
    (0..maximum).collect{|i| print(i)}
  end
end

if __FILE__ == $0
  generator = FizzBuzz.new
  puts generator.run(1000)
end
