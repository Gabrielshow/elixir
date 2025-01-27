defmodule Practice.Array.Intersection do
  def array_intersection(arr1, arr2) do
    Enum.uniq(Enum.intersection(arr1, arr2))
  end
end

array1 = [1, 2, 3, 4, 5]
array2 = [3, 4,5 6, 7]
intersection = Practice.Array.Intersection.array_intersection(array1, array2)
IO.inspect(intersection)
