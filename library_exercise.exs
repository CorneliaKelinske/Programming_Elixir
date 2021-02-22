defmodule Libraries do

  def to_string(num), do: :erlang.float_to_binary(num, [decimals: 2])

  def get_op_var(var), do: System.get_env(var)

  def get_ext(filename), do: Path.extname(filename)

end
