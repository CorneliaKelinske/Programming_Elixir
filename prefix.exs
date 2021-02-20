prefix = fn str1 -> (fn str2 -> "#{str1} #{str2}" end) end

prefix_hello = prefix.('hello')

IO.puts prefix_hello.("furzkanone")
