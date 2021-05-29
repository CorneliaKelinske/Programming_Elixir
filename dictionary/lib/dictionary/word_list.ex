defmodule Dictionary.WordList do

  def start do
    "assets/words.txt"
    |> Path.expand("/home/connie/daeaev/Programming_Elixir/dictionary")
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word(word_list) do
    #start()
    Enum.random(word_list)
  end


end
