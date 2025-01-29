defmodule Practice.Array.MatrixProduct do
  def matrix_product(matrix1, matrix2) do
    rows = length(matrix1)
    cols = length(Enum.at(matrix2, 0))

    for i  <- 0..(rows - 1) do
      for j <- 0..(cols - 1) do
        Enum.reduce(matrix1, 0, fn row, acc ->
          acc + (Enum.at(row, j) * Enum.at(Enum.at(matrix2, i), j))
        end)
      end
    end
  end
end

matrix1 = [[1,2,3], [4, 5, 6], [7, 8, 9]]
matrix2 = [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
product = Practice.Array.MatrixProduct.matrix_product(matrix1, matrix2)
IO.inspect(product)
