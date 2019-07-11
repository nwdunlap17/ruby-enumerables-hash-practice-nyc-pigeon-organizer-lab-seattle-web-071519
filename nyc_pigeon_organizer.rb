def nyc_pigeon_organizer(data)
  # write your code here!
end


def look_in_nested_hash(lookup,hash2)
  p "hash2: #{hash2}"
  hash2.each do |hash|
  p "hash: #{hash}"
    hash.each do |name|
      p "name: #{name}"
      if name == lookup
        p "this hash: ${hash}"
        return hash
      end
    end
  end
  return "FAILED"
end

pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}

p look_in_nested_hash("Luca",pigeon_data[:color])