# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#need to loop over entire hash,
#then check if value is bigger than PREVIOUS biggest value
#(like how spaceship op & #sort works under the hood!)
# advantage here: this shows the 'complexity' of the algorithm to sort values that is 'hidden' by other solutions with 'tricks' like #sort an array, shortcuts like #max/#min...


name_hash = {:blake => 500, :zoe => 0, :ashley => 2, :adam => 1}



    # -- my program: --

def key_for_min_value(hash)
  min_key = nil
  min_value = nil
  hash.each do |key, value|
    if min_value.nil? || value < min_value
      min_key = key
      min_value = value
    end
  end
  min_key
end

p key_for_min_value(name_hash) # => :zob




  #  -- #sort_by ---

def sort_by(hash)
  hash = hash.keys.sort_by { |k| hash[k] }
  hash[0]
end

p sort_by(name_hash) # => :zoe
