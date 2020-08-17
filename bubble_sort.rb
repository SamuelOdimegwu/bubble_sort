def bubble_sort(array)
    #I created a variable to return the array if the array size is less or equal to one, because there's nothing to sort at this point.
    array_length = array.size
    return array if array_length <= 1

    loop do
        #I created a variable that will be checked before the code runs
        swapped = false
        #Subtract one because ruby arrays are zero-indexed.
        (array_length - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
    array
end
