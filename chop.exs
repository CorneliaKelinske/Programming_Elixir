defmodule Chop do

  def guess(a, a..b), do: "#{a} is the correct guess!"
  def guess(b, a..b), do: "#{b} is the correct guess!"
  def guess(num, a..b) when num <= div(b,2) do
    "Is it #{div(b,2)}"
     Chop.guess(num, a..div(b,2))
  end

end
