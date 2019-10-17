require 'pry'

# def hello_t(arr)
#   # puts 'hi'
#   # iterator .each
#   # loop while, times, loop 

#   # start with a counter
#   idx = 0 # var reps index

#   # #create a while loop to get access to el in arr to yield to the block
#   if block_given?
#     while idx < arr.length # conditional states how long the loop is supposed to run
#       #access each el 1 at a time #=> arr[idx]
#       #sending info out to block 
#       yield(arr[idx])
#       # binding.pry

#       # increment  the counter
#       idx += 1
#     end
#     arr
#   else
#     puts "Hey! No block was given!\n"
#   end
#   # arr
# end 

###where yield sends info AKA where block is located###

def hello_t(arr)
  # iterator .each
  if block_given?
    arr.each do |name|
      yield(name)
    end
  else
    puts "Hey! No block was given!"
  end 
  
  # conditional ? TRUTHY : FALSEY

  # (block_given?) ? (arr.each {|name|  yield(name)}) : (puts "Hey! No block was given!") 
end

# call your method here!

# hello_t(['hey', 'hi', 'hello']){ |name| puts name }