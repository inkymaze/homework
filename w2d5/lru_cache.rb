class LRUCache
  def initialize(max)
    @cache = []
    @max = max
  end

  def count
    @cache.count
  end

  def add(el)
    #need hashmap to check if key is include? for O(1) lookup and deletion
    #need to resize if max is reach and rehash elements into buckets
    
    if @cache.include?(el)
      @cache.delete(el)

    elsif self.count == @max
      @cache.shift
    end
    @cache << el
  end

  def show
    p @cache
    nil
  end

   private
   # helper methods go here!

 end


 johnny_cache = LRUCache.new(4)

 johnny_cache.add("I walk the line")
 johnny_cache.add(5)

 johnny_cache.count # => returns 2

 johnny_cache.add([1,2,3])
 johnny_cache.add(5)
 johnny_cache.add(-5)
 johnny_cache.add({a: 1, b: 2, c: 3})
 johnny_cache.add([1,2,3,4])
 johnny_cache.add("I walk the line")
 johnny_cache.add(:ring_of_fire)
 johnny_cache.add("I walk the line")
 johnny_cache.add({a: 1, b: 2, c: 3})


 p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
