defmodule Procs do

 def greeter(count) do
  receive do
      { :add, n } ->
        greeter(count+n)
    msg ->
      IO.puts "#{count}: Hello #{IO.inspect(msg)}"
      greeter(count)
  end
 end
end
