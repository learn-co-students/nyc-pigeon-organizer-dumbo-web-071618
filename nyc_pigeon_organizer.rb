def nyc_pigeon_organizer(data)
  bird_hash= {}
data.each do |characteristics_key, details_hash|
  details_hash.each do |details, birdies|

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
return bird_hash
end