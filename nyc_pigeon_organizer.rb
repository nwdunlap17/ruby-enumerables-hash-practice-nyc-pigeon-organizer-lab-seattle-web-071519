def nyc_pigeon_organizer(data)
  # write your code here!
end


def look_in_nested_hash(lookup,hash2)
  
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

p look_in_nested_hash("Lola",pigeon_data[:color])