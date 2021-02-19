fizz_buzz = fn
  0, _, _ -> IO.puts "Fizz"
  _, 0, _ -> IO.puts "Buzz"
  _, _, a -> IO.puts "#{a}"
end

fizz_buzz.(0, 1, 5)
fizz_buzz.(1, 0, "hello")
fizz_buzz.(1, 1, "hello")
