def nyc_pigeon_organizer(data)
  # write your code here!
  arr = []
  data.each do |k , v|
    v.each do |k1, v1|
      v1.each do |el|
        arr << el
      end
    end
  end
  arr.uniq!
  hash = {}
  arr.each do |el|
    hash[el] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end
  
  data.each do |k , v|
    v.each do |k1, v1|
      v1.each do |el|
        hash[el][k] << k1.to_s
      end
    end
  end
  hash
end