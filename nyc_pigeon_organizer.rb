require 'pry'

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
  data.each do |attribute, hash|
    hash.each do |detail, array|
      array.each do |name|
        if new_hash[name].nil?
          new_hash[name] = {:color => [], :gender => [], :lives => []}
        end
        new_hash.keys.each do |names|
          if array.include?(names) && new_hash[names][attribute].include?(detail.to_s) == false
            new_hash[names][attribute] << detail.to_s
          end
        end
      end
    end
  end
  new_hash
end
