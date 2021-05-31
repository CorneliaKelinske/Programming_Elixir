defmodule Procs do

 def greeter do
  receive do
    msg ->
      IO.puts "Hello #{IO.inspect(msg)}"
  end
  greeter()
 end

end
