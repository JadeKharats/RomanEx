defmodule Roman do
  @moduledoc """
  Documentation for `Roman`.
  """

  @doc """
  Roman.

  ## Examples

      iex> Roman.convert(1)
      "I"

      iex> Roman.convert(3)
      "III"

      iex> Roman.convert(4)
      "IV"

      iex> Roman.convert(5)
      "V"

      iex> Roman.convert(14)
      "XIV"

      iex> Roman.convert(454)
      "CDLIV"

      iex> Roman.convert(942)
      "CMXLII"

      iex> Roman.convert(2896)
      "MMDCCCXCVI"

      iex> Roman.convert(-2)
      ""

  """
  def convert(number) do
    cond do
      number >= 1000 ->
        "M" <> convert(number - 1000)
      number >= 900 ->
        "CM" <> convert(number - 900)
      number >= 500 ->
        "D" <> convert(number - 500)
      number >= 400 ->
        "CD" <> convert(number - 400)
      number >= 100 ->
        "C" <> convert(number - 100)
      number >= 90 ->
        "XC" <> convert(number - 90)
      number >= 50 ->
        "L" <> convert(number - 50)
      number >= 40 ->
        "XL" <> convert(number - 40)
      number >= 10 ->
        "X" <> convert(number - 10)
      number == 9 ->
        "IX"
      number >= 5 ->
        "V" <> convert(number - 5)
      number == 4 ->
        "IV"
      number > 1 ->
        "I" <> convert(number - 1)
      number == 1 ->
        "I"
      true ->
        ""
    end
  end
end
