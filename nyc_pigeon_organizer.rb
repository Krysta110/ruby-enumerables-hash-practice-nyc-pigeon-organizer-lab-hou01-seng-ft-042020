require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

# num_keys = data.length

  pigeon_list = {}

  data.each do |main_detail,main_value| #looping each key-value of main hash (main_detail is the key)
    main_value.each do |sub_detail,array| #looping each detail-array in the main_key-value : (detail of a detail, aka sub-detail)
      array.each do |name| #looping each name in array of each sub_detail-array
        if pigeon_list.has_key?(name)  #true if name is a key in newHash
          if pigeon_list[name].has_key?(main_detail) #true if main_detail is a key of name in newHash
            pigeon_list[name][main_detail] << sub_detail.to_s #put the sub detail into location in newHash/name/main_detail/sub_detail
            #and converts to a string
          else  #false: when main_detail is NOT a key of name in newHash
            pigeon_list[name][main_detail] = [sub_detail.to_s] #create main_detail under name and add sub_detail as a string
          end
        else #false: name is NOT a key in newHash
          pigeon_list[name] = {main_detail => [sub_detail.to_s]} #creates key of name in newHash, assigning it a hash with
          # a key of main_detail and a value of an array containing sub_detail as a string
        end
      end
    end
  end
  #
  # data.each do |key1, value1|   # looping main hash (key - value[of hashes])
  #   value1.each do |key2, value2|   # looping each key-value in value[hash] of the main hash
  #     value2.each do |name|   # looping each array[value] of names of each key
  #       if pigeon_list.has_key?(name)   #does the newList have a key of name?
  #         if pigeon_list[name].has_key?(key1)   #yes that name is there, does the name have key1 as a key under name?
  #           pigeon_list[name][key1] << key2.to_s    #yes that key is there, now push on key2 as a string to key1 under name
  #         else
  #           pigeon_list[name][key1] = key2.to_s  #no that key is not there, so make name-key1 equal key2
  #         end
  #       else
  #         pigeon_list[name] = {key1 => key2.to_s } #no that name is not there, add the name to the newList and make it a has of key1 holding key2
  #       end
  #
  #     end
  #   end
  # end

return pigeon_list
end
