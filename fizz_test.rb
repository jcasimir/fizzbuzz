gem 'minitest'
require 'minitest/autorun'
require './fizz.rb'
require 'minitest/pride'

class FizzBuzzTest < Minitest::Test
  def test_it_exists
    assert FizzBuzz
  end

  def test_it_prints_fizz_for_a_multiple_of_three
    fb = FizzBuzz.new
    assert_equal "Fizz", fb.print(3)
    assert_equal "Fizz", fb.print(6)
    assert_equal "Fizz", fb.print(27)
  end

  def test_it_prints_buzz_for_a_multiple_of_five
    fb = FizzBuzz.new
    assert_equal "Buzz", fb.print(5)
    assert_equal "Buzz", fb.print(10)
    assert_equal "Buzz", fb.print(80)
  end

  def test_it_prints_fizzbuzz_for_a_multiple_of_five_and_three
    fb = FizzBuzz.new
    assert_equal "FizzBuzz", fb.print(15)
    assert_equal "FizzBuzz", fb.print(30)
    assert_equal "FizzBuzz", fb.print(90)
  end

  def test_it_prints_a_number_otherwise
    fb = FizzBuzz.new
    assert_equal "11", fb.print(11)
    assert_equal "23", fb.print(23)
    assert_equal "88", fb.print(88)
  end

  def test_it_correctly_outputs_a_small_sequence
    fb = FizzBuzz.new
    result = fb.run(15)
    expected = %w(FizzBuzz 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz)
    assert_equal expected, result
  end
end
