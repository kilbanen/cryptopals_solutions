hex = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
bytes = hex.scan(/../).map { |byte| byte.hex }

(0..255).each do |character|
  plain = bytes.map { |byte| (byte ^ character).chr }.join
  score = plain.scan(/[ETAOIN SHRDLU]/i).size
  if(score > 20)
    puts plain + " - " + character.chr
  end
end
