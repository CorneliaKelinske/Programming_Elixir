defmodule Dictionary.WordList do

  def random_word() do
    start()
    |> Enum.random()
  end

  def start do
    "assets/words.txt"
    |> Path.expand("/home/connie/daeaev/Programming_Elixir/dictionary")
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
