defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "Roman convert number 1 to the string I" do
    assert Roman.convert(1) == "I"
  end

  test "Roman convert number 2 to the string II" do
    assert Roman.convert(2) == "II"
  end

  test "Roman convert number 4 to the string IIII" do
    assert Roman.convert(4) == "IIII"
  end
end
