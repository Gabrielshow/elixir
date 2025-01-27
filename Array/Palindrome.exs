defmodule Practice.Array.Palindrome do
  def palindrome?(arr) do
    arr == Enum.reverse(arr)
  end
end

array1= [1, 2, 3, 2, 1]
array2= [1, 2, 3, 4, 5]
is_palindrome1 = Practice.Array.Palindrome.palindrome?(array1)
is_palindrome2 = Practice.Array.Palindrome.palindrome?(array2)

IO.puts("Array is palindrome: #{is_palindrome}")
IO.puts("Array is palindrome: #{is_palindrome}")
