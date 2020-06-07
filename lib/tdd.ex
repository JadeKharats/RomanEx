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

  """
  def convert(number) do
    if number > 1 do
      "I" <> convert(number - 1)
    else
      "I"
    end
  end
end
