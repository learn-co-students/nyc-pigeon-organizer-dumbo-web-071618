def nyc_pigeon_organizer(data)
pigeon_data.each do |characteristics_key, details_hash|
  details_hash.each do |details, birdies|
  #puts characteristics_key
  #puts details_hash[:color]
  #puts details[0]
    birdies.each do |birdie|
      if bird_hash[birdie].nil?
        bird_hash[birdie] = {}
      end
      bird_hash[birdie][characteristics_key] ||= []      
      if !bird_hash[birdie][characteristics_key].include?(details)
        bird_hash[birdie][characteristics_key] << details
      end
    end
  end
end
puts bird_hash
end