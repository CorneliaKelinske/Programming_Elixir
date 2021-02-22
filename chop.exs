defmodule Chop do

  def guess(a, a..b), do: IO.puts "#{a} is the correct guess!"
  def guess(b, a..b), do: IO.puts "#{b} is the correct guess!"

  def guess(num, a..b) when num <= div(a+b,2) do
    {num, a..b} |> IO.inspect(label: "GUESS 3")
     IO.puts "Is it #{div(a+b,2)}"
     guess(num, a..div(a+b,2))
  end

  def guess(num, a..b) when num > div(a+b,2) do
    {num, a..b} |> IO.inspect(label: "GUESS 4")

    IO.puts "Is it #{b+div(b,2)}, option 2"
    guess(num, div(a+b,2)..b)
  end

end
