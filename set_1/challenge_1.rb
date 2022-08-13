def hex_to_base64(hex)
  base64_table = [*'A'..'Z', *'a'..'z', *'0'..'9', '+', '/']
  bytes = hex.hex.digits(64).reverse
  base64 = bytes.map { |byte| base64_table[byte] }.join
end

hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
base64 = hex_to_base64(hex)
puts base64
