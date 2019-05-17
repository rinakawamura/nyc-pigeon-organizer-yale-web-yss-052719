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
      end
    end
  end
  return new_hash
end
