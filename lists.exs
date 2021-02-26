defmodule Lists do
  def len([]), do: 0
  def len([_h|t]), do: 1 + len(t)

  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def double([]), do: []
  def double([h|t]), do: [2*h | double(t)]

  def square([]), do: []
  def square([h|t]), do: [h*h | square(t)]

  def map([], func), do: []
  def map([h|t], func) do
    [func.(h) | map(t, func)]
  end

  def sum_pairs([]), do: []
  def sum_pairs([h1,h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  def even_length(list) do
    rem(Enum.count(list), 2) == 0
  end

  def reduce([], value, _func), do: value
  def reduce([h|t], value, func) do
    reduce(t, func.(h, value), func)
  end

  def mapsum([], _func), do: 0
  def mapsum([h|t], func) do
    func.(h) + mapsum(t, func)
  end

  def maximum(list, value \\ 0)
  def maximum([], value), do: value
  def maximum([h|t], value) when h >= value do
    maximum(t, h)
  end
  def maximum([h|t], value) when h < value do
    maximum(t, value)
  end

end
