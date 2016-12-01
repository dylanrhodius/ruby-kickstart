def word_count(string)
  word_array = string.downcase.split(" ")
  count_hash = Hash.new(0)

  word_array.each do |name|
    count_hash[name] += 1
  end
  count_hash
end

word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}
