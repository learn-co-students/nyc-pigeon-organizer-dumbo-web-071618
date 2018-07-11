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

def create_new_template_with_names data 
  organized_data = {}
  names_array = []
  
  #Setting the template for the organized data hash
  data.each do |attribute,info|
    info.each do |specs,pigeons|
      pigeons.each do |name|
        names_array << name
      end
    end
  end
  #removing repeated pigeons
  names_array.uniq!
  
  #creating a new key for each little buddy
  names_array.each do |pigeon|
    organized_data[pigeon] = {}
  end
  organized_data
end

def add_property_keys_to_each_pigeon(old_data, new_data)
  #add new keys to each pigeon's hash 
  old_data.each do |keys,info|
    new_data.each do |pigeon,empty_hash|
      new_data[pigeon][keys] = []
    end
  end
  new_data
end

def fill_in_pigeon_info(old_data,new_data)
  #filling in information for each pigeon 
  
  #iterating through our new data structure
  new_data.each do |pigeon, data|
    data.each do |category,info|
      
      #iterating through the old data
      old_data.each do |attribute,specs|
        specs.each do |topic,little_dudes|
          little_dudes.each do |name|
            
            if name == pigeon 
              new_data[pigeon][attribute] << topic.to_s
            end
          end
          
        end
        new_data[pigeon][attribute].uniq!
      end
      
    end
  end
  new_data
end

def nyc_pigeon_organizer(data)
  organized_data = create_new_template_with_names data 
  organized_data = add_property_keys_to_each_pigeon data, organized_data
  organized_data = fill_in_pigeon_info data, organized_data
end

puts nyc_pigeon_organizer(pigeon_data)