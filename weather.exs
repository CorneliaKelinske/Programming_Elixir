defmodule WeatherHistory do


# getting weather information for location number 27

def for_location_27([]), do: []
def for_location_27([[time, 27, temp, rain ] | tail]) do
  [ [time, 27, temp, rain] | for_location_27(tail)]
end
def for_location_27([_ | tail]), do: for_location_27(tail)

def test_data do
  [
    [1362622562, 26, 15, 0.125],
    [1362622562, 27, 15, 0.45],
    [1362622562, 28, 21, 0.25],
    [1362622562, 26, 19, 0.135],
    [1362622562, 27, 17, 0.45],
    [1362622562, 28, 45, 0.125],
  ]
end

#getting weather information for any location
def for_location([], target_loc), do: []

def for_location([ head = [_, target_loc, _, _] | tail], target_loc) do
  [ head| for_location(tail, target_loc) ]
end

def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)

end
