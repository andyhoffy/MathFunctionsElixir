defmodule MathFunctionsTest do
  use ExUnit.Case

  test "return min value from list of numbers" do
    numbers = [56, 17, 10, 10, 21, 12, 32]
    min = MathFunctions.min(numbers)
    assert 10 == min
  end

  test "return error when min is called with empty list" do
    assert_raise ArgumentError, fn ->
      MathFunctions.min([])
    end
  end

  test "return max value from list of numbers" do
    numbers = [56, 17, 10, 73, 21, 12, 32]
    max = MathFunctions.max(numbers)
    assert 73 == max
  end

  test "return error when max is called with empty list" do
    assert_raise ArgumentError, fn ->
      MathFunctions.max([])
    end
  end

  test "return average value from list of numbers" do
    numbers = [4, 8, 15, 16, 23, 42]
    avg = MathFunctions.avg(numbers)
    assert 18.0 == avg
  end
end