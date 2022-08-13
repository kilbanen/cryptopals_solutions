def xor(a, b)
  ((a.hex &  ~(b.hex)) | (~(a.hex) &  b.hex)).to_s(16)
end

a = "1c0111001f010100061a024b53535009181c"
b = "686974207468652062756c6c277320657965"
c = xor(a, b)
puts c
