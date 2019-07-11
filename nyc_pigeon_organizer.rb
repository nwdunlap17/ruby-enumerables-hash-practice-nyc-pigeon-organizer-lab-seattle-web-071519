def nyc_pigeon_organizer(data)
  pigeon_list = create_pigeonbase(data)
  pigeon_list.each_key do |pigeon|
    pigeon_list[pigeon][:color] = find_pigeon(pigeon,data[:color])
    pigeon_list[pigeon][:lives] = find_pigeon(pigeon,data[:lives])
  end
  return pigeon_list
end

def create_pigeonbase(data)
  pigeon_list = {}
  data[:gender][:male].each do |name|
    pigeon_list[name] = {:gender => ["male"]}
  end
  data[:gender][:female].each do |name|
    pigeon_list[name] = {:gender => ["female"]}
  end
  pigeon_list.each_key do |pigeon|
    pigeon_list[pigeon][:lives] = []
    pigeon_list[pigeon][:color] = []
  end
  return pigeon_list
end

def find_pigeon(lookup,hash2)
  # Given a hash category, finds which category the named pigeon belongs to and returns it as string 
  array = []
  hash2.each do |key,names|
    names.each do |name|
      if(name == lookup)
        array << "#{key}"
      end
    end
  end
  return array
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

p nyc_pigeon_organizer(pigeon_data)