# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  value_array = name_hash.collect do |name, value|
    value 
  end
  if value_array.length == 0 
    return NIL
  end
  min_value = value_array[0]
  min_key = ""
  name_hash.each do |name, value|
    if value <= min_value
      min_value = value 
      min_key = name
    end
  end
  min_key
end