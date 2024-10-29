IO.puts "Enter a string"
input_string = String.trim(IO.gets(""))

vowels = "aeiouAEIOU"
consonants = "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ"

vowel_count = Enum.count(String.graphemes(input_string), fn(char) -> String.contains?(vowels, char) end)
consonant_count = Enum.count(String.graphemes(input_string) , fn(char) -> String.contains?(consonants, char) end)

IO.puts "Number of vowels: #{vowel_count}"
IO.puts "Number of consonants: #{consonant_count}"
