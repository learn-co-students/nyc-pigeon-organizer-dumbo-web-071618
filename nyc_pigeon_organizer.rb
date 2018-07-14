def nyc_pigeon_organizer(data)
   organized_hash = {}

   data.each do |attributes, options|
     options.each do |option, name|
       pigeons.each do |name|
         organized_hash[name] ||= {}
         organized_hash[name][attributes] ||= []
         organized_hash[name][attributes] << option.to_s
       end
     end
   end
   return organized
end