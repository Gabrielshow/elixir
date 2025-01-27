defmodule Practice.Array.MergeArray do
  def merge_sorted_arrays(arr1, arr2) do
    Enum.uniq(Enum, concat(arr1, arr2)) |> Enum.sort()
  end
end

array1 = [1, 2, 3, 4]
array2 = [ 2, 4, 5, 8]
merged_array = Practice.Array.MergeArray.merge_sorted_arrays(array1 , array2 )
IO.inspect(merged_array)
