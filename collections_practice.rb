def sort_array_asc(array)
  array.sort
end
def sort_array_desc(array)
  array.sort { |x,y| y<=>x }
end
def sort_array_char_count(array)
  array.sort {|x,y| x.length <=> y.length}
end
def swap_elements_from_to(array,index,destination_index)
  first_elment = array[index]
  snd_element  =array[destination_index]
  array[index] = snd_element
  array[destination_index] = first_elment
  return array
end
def swap_elements(array)
  swap_elements_from_to(array,1,2)
end

def kesha_maker  (array)
  array.each_with_index {
    |word,index| word[2]='$'
  }
   array
end
def reverse_array (array)
  array.reverse
end

def find_a (array)
  new_strs =[]
  array.each do |string|
    if string.start_with?("a")
      new_strs.push(string)
    end
  end
  new_strs
end
def sum_array(array)
  array.inject(0){|sum,element| sum+element}
end

def add_s(array)
  array.each_with_index.collect{
    |element,index|
    if element != "feet"
      element << "s"
    else
      element
    end
  }
end
