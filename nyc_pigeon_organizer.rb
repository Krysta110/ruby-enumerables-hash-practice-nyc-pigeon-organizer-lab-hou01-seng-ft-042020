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

return pigeon_list
end
