list =[2,5,2,3,5,6]
#---Release 0-----
def search_array(list, value)
  current=0
  until current==list.length
    if list[current]==value
      return current
    else
      current=current +1
    end
  end
end

#----Release 1----
def fib(length)
sequence=[0,1]
counter =2
  until length==counter
    sequence.push(sequence[counter-1] + sequence[counter-2])
    counter= counter +1
  end
  return sequence
end

#--- Release 2---
#Given a array of integers, look at first index
#save index value
# compare value to the next index value
# if greater, switch position, is less then remain
# do this for length of array

array_2 = [22, 26, 11, 13]
def bubble_sort (currentList)
    len = currentList.length
    loop do currentList
        swapped = false
        (len-1).times do |index|
        if  currentList[index] >  currentList[index+1]
             currentList[index],  currentList[index+1] =  currentList[index+1],  currentList[index]
            swapped=true
        end
    end
    break if (swapped==false)
    end
    return  currentList
end
