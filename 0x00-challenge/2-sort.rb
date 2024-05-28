# The logic for inserting elements into the result array is flawed. Specifically, the condition if result[i] < i_arg should be if result[i] <= i_arg, and the insertion logic is incorrect.
# The element should be inserted at the correct position, not at i - 1. 

###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # find the correct position to insert
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] > i_arg
            result.insert(i, i_arg)
            is_inserted = true
        else
            i += 1
        end
    end
    result << i_arg if !is_inserted
end

puts result
