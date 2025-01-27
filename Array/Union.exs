defmodule Practice.Array.Union do
  def array_union(arr1, arr2) do
    Enum.uniq(Enum.concat(arr1, arr2))
  end
end

array1 = [1, 2, 3, 4, 5]
array2 = [1, 4, 5, 6 , 7]
union = Practice.Array.Union.array_union(array1, array2)
IO.inspect(union)
