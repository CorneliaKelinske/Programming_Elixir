defmodule Libraries do

  def to_string(num), do: :erlang.float_to_binary(num, [decimals: 2])

end
