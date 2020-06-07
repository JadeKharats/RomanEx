defmodule TddTest do
  use ExUnit.Case
  doctest Tdd

  test "greets the world" do
    assert Tdd.hello() == :world
  end
end
