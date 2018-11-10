defmodule MastermindTest do
  use ExUnit.Case

  test "score all wrong" do
    expected = %{
      reds: 0,
      whites: 0,
    }
    guess = [5, 6, 5, 6]
    answer = [1, 2, 3, 4]
    assert Mastermind.score(guess, answer) == expected
  end

  test "guess 1 red" do
    expected = %{
      reds: 1,
      whites: 0,
    }
    guess = [1, 6, 5, 6]
    answer = [1, 2, 3, 4]
    assert Mastermind.score(guess, answer) == expected
  end

  test "white and red count, one of each" do
    expected = %{
      reds: 1,
      whites: 1,
    }
    guess = [2, 2, 1, 2]
    answer = [1, 2, 3, 4]
    assert Mastermind.score(guess, answer) == expected
  end

  test "white with multiples" do
    expected = %{
      reds: 0,
      whites: 1,
    }
    guess = [1, 1, 2, 6]
    answer = [2, 2, 7, 8]
    assert Mastermind.score(guess, answer) == expected
  end

  test "white and red with multiples" do
    expected = %{
      reds: 2,
      whites: 2,
    }
    guess = [1, 1, 1, 2]
    answer = [2, 1, 1, 1]
    assert Mastermind.score(guess, answer) == expected
  end
end
