class Stack
   def initialize(stack = [])
     @stack = stack
   end

   def add(el)
     @stack << el
     el
   end

   def remove
     @stack.pop
   end

   def show
     @stack.dup
   end
 end


class Queue

  def initialize(queue = [])
    @queue = queue
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map

  def initialize(mappie = [])
    @mappie = mappie
  end

  def assign(key,value)
    combo_index = @mappie.index {|combo| combo.first == key}
    combo_index ? @mappie[combo_index][1] = value : @mappie << [key, value]
  end

  def lookup(key)
    @mappie.each do |combo|
      if combo.include?(key)
        return combo[1]
      end
    end
    nil
  end

  def remove(key)
    @mappie.reject! { |combo| combo[0] = key}
    nil
  end

  def show
    deep_dup(@mappie)
  end

  def deep_dup(arr)
    arr.map {|el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
