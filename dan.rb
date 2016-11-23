hash = {
  'r' => [4, 5, 2, 6, 10],
  'd' => [8, 9, 4, 5, 9],
  'e' => [9, 4, 5, 7, 5],
  'f' => [2, 8, 2, 8, 1],
  'q' => [1, 9, 7, 4, 5],
  'o' => [6, 2, 3, 5, 1],
  'n' => [4, 1, 2, 8, 1]
}

new_hash = {}
hash.each do |letter, numbers_array|
 numbers_array.each do |number|
   if new_hash.include?(number)
     new_hash[number] << letter
   else
     new_hash[number] = [letter]
   end
 end
end
p new_hash
