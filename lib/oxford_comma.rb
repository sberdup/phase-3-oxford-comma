# require 'pry'
def oxford_comma(array)
    return array[0] if array.size == 1
    return array.join(' and ') if array.size == 2

    punctuated_array = array.map.with_index(1) do |word, index|
        if index == array.size
            "and #{word}"
        else
            "#{word},"
        end
    end
    # binding.pry
    punctuated_array.join(' ')
end

# oxford_comma(['carrot', 'peas', 'cheese', 'bees'])