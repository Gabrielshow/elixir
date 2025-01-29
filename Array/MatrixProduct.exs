defmodule Practice.Array.MatrixProduct do
  def matrix_product(matrix1, matrix2) do
    rows1 = length(matrix1)
    cols1 = length(Enum.at(matrix1, 0))
    rows2 = length(matrix2)
    cols2 = length(Enum.at(matrix2, 0))

    # Ensure the matrices can be multiplied
    if cols1 != rows2 do
      raise ArgumentError, "Number of columns in matrix1 must equal number of rows in matrix2"
    end

    # Initialize the result matrix with zeros
    result = for _ <- 0..(rows1 - 1), do: for _ <- 0..(cols2 - 1), do: 0

    # Calculate the product
    result =
      for i <- 0..(rows1 - 1), reduce: result do
        result_acc ->
          for j <- 0..(cols2 - 1), reduce: result_acc do
            result_acc_inner ->
              value = Enum.reduce(0..(cols1 - 1), 0, fn k, acc ->
                acc + (Enum.at(Enum.at(matrix1, i), k) * Enum.at(Enum.at(matrix2, k), j))
              end)

              # Update the specific value in the result matrix
              updated_row = List.replace_at(Enum.at(result_acc_inner, i), j, value)
              List.replace_at(result_acc_inner, i, updated_row)
          end
      end

    result
  end
end

matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
matrix2 = [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
product = Practice.Array.MatrixProduct.matrix_product(matrix1, matrix2)
IO.inspect(product)
