require 'pry'
def nyc_pigeon_organizer(data)
  pigeons_list = {}
  color_array = []
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |value, name_hash|
      name_hash.each do |name|
        pigeons_list[name] = {:color => [], :gender => [], :lives => []}
     end 
    end
  end
  pigeon_names = pigeons_list.keys
  data[:color].each do |color_value, name_hash|
    name_hash.each do |name|
    pigeon_names.each do |p_name|
      if p_name == name 
        pigeons_list[name][:color] << color_value.to_s
      end
     end
    end
  end
    data[:gender].each do |gender, m_f|
      m_f.each do |name|
    pigeon_names.each do |p_name|
      if p_name == name 
        pigeons_list[name][:gender] << gender.to_s
      end
    end  
  end
end
    data[:lives].each do |place, name_hash|
      name_hash.each do |name|
    pigeon_names.each do |p_name|
      if p_name == name 
        pigeons_list[name][:lives] << place.to_s
      end
     end
    end  
 end
pigeons_list
end