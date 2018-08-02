def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |quality, properties|
    properties.each do |property, pigeon_array|
      pigeon_array.each do |pigeon_name|
        if !pigeon_list[pigeon_name]
          pigeon_list[pigeon_name] = {}
        end
        
        if !pigeon_list[pigeon_name][quality]
          pigeon_list[pigeon_name][quality] = []
        end
        pigeon_list[pigeon_name][quality] << property.to_s
      end
    end
  end
  pigeon_list
end