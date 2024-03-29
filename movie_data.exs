defmodule MovieData do

  def start_link() do
    Agent.start_link(fn -> %{} end)
  end

  def add(pid, movie) do
    Agent.update(pid, fn(state) ->
      Map.put(state, movie, 1)
    end)
  end

  def reset(pid, movie) do
    Agent.update(pid, fn(_state) -> %{} end)
  end

  def watch_count(pid, movie) do
    Agent.get(pid, fn(state) ->
      Map.get(state, movie)
    end)
  end

  def watch(pid, movie) do
    Agent.update(pid, fn(state) ->
      count = Map.get(state, movie)
      Map.replace(state, movie, count + 1)
    end)

  end
end
