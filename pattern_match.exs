defmodule PatternMatch do

  def swap({a, b}), do: {b, a}

  def is_equal(a, a), do: true
  def is_equal(_, _), do: false
end
