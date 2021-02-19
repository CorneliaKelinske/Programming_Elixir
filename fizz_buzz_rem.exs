fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> "#{a}"
end

fizz_rem = fn n -> IO.puts "#{fizz_buzz.(rem(n,3), rem(n,5), n)}" end

fizz_rem.(11)
fizz_rem.(10)
fizz_rem.(15)
fizz_rem.(10)
fizz_rem.(12)
