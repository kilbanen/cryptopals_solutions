key = "ICE"
plaintext = "Burning 'em, if you ain't quick and nimble
I go crazy when I hear a cymbal"

ciphertext = plaintext.chars.each_with_index.map do |character, i|
  (character.ord ^ key.chars[i%3].ord).to_s(16)
end.join
puts ciphertext
