defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns structure" do

    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "each element of letters is a lower-case ASCII character" do

    game = Game.new_game()

    assert Enum.all?(game.letters, fn letter -> letter >= "a" && letter <= "z" end)


  end



end
