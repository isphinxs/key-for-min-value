# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash.size() == 0
        nil
    else 
        min_key = ""
        min_value = 0
        first_key = true 
        name_hash.each do |key, value|
            if first_key
                min_key = key
                min_value = value
                first_key = false
            else 
                if value < min_value 
                    min_value = value
                    min_key = key
                end 
            end 
        end
        min_key
    end 
end