keysize = 2
def hamming_distance(a, b)
  hamming_distance = 0
  a_bits = a.unpack1('B*').chars
  b_bits = b.unpack1('B*').chars
  a_bits.each_with_index do |_, index|
    hamming_distance += 1 if a_bits[index] != b_bits[index]
  end
  hamming_distance
end
puts hamming_distance('this is a test', 'wokka wokka!!!')
