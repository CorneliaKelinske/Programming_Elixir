defmodule Dictionary do
  def random_word() do
    word_list()
    |> Enum.random()
  end
  def word_list do
    "assets/words.txt"
    |> Path.expand("/home/connie/daeaev/Programming_Elixir/dictionary")
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
