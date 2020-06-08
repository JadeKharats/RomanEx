defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "Roman convert number 1 to the string I" do
    assert Roman.convert(2896) == "MMDCCCXCVI"
  end

end
