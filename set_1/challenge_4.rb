hexes = File.read("4.txt").split
hexes.each do |hex|
  bytes = hex.scan(/../).map { |byte| byte.hex }

  (0..255).each do |character|
    plain = bytes.map { |byte| (byte ^ character).chr }.join
    score = plain.scan(/[ETAOIN SHRDLU]/i).size
    if(score > 20)
      puts plain + " - " + character.chr
    end
  end
end
