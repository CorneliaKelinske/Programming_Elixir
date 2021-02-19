fizz_buzz = fn
  0, _, _ -> IO.puts "Fizz"
  _, 0, _ -> IO.puts "Buzz"
  0,0, _ -> IO.puts "FizzBuzz"
  _, _, a -> IO.puts "#{a}"
end

fizz_rem = fn n -> IO.puts "#{fizz_buzz.(rem(n,3), rem(n,5), n)}, n" end

fizz_rem.(11)
