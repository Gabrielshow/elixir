defmodule Practice.Array.SumTwoMatrices do
  def sum_matrices(matrix1, matrix2) do
    Enum.zip(matrix1, matrix2) |> Enum.map(fn{row1, row2} ->
     Enum.zip(row1, row2) |> Enum.map(&Kernel.+/2)
    end)
  end
end


matrix1 = [[1,2,3], [4, 5, 6], [7, 8, 9]]
matrix2 = [[9, 8 , 7], [6, 5, 4], [3, 2, 1]]
result_matrix = Practice.Array.SumTwoMatrices.sum_matrices(matrix1, matrix2)
IO.inspect(result_matrix)
