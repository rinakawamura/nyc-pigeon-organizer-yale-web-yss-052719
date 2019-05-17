require "pry"

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

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |category, value|
    value.each do |key, names|
      names.each do |name|
        if new_hash.keys.include?(name)
          new_hash[name][category] << key.to_s
        else
          new_hash[name] = {color: [], gender: [], lives: []}
          new_hash[name][category] << key.to_s
        end
        binding.pry
      end
    end
  end
  return new_hash
end

nyc_pigeon_organizer(pigeon_data)
