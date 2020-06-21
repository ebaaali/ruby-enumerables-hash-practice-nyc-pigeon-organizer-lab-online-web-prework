

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, detail_hash|
    detail_hash.each do |detail, name_array|
      name_array.each do |bird|
        if pigeon_list[bird] == nil
          pigeon_list[bird] = {}
        end
        if pigeon_list[bird][attribute] == nil
          pigeon_list[bird][attribute] = []
        end
        if !pigeon_list[bird][attribute].include?(detail.to_s)
         pigeon_list[bird][attribute].push(detail.to_s)
       end
      end
    end
  end
  pigeon_list
end

