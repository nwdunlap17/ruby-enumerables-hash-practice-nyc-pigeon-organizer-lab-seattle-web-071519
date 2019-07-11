def nyc_pigeon_organizer(data)
  # write your code here!
end

def create_pigeonbase(data)
  pigeon_list = {}
  data[:gender][:male].each do |list|
    p list
  end
end

def find_pigeon(lookup,hash2)
  # Given a hash category, finds which category the named pigeon belongs to and returns it as string 
  hash2.each do |key,names|
    names.each do |name|
      if(name == lookup)
        return "#{key}"
      end
    end
  end
  return "FAILED"
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
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

create_pigeonbase(pigeon_data)