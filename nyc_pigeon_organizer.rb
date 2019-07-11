def nyc_pigeon_organizer(data)
  # write your code here!
end


def look_in_nested_hash(lookup,hash2)
  p "hash2: #{hash2}"
  hash2.each do |key,names|
    p "key: #{key}"
    p "value: #{names}"
    names.each do |name|
      p name
      if(name == lookup)
        return key
      end
    end
  end
  return "FAILED"
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    #:white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    #:brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

p look_in_nested_hash("Andrew",pigeon_data[:color])