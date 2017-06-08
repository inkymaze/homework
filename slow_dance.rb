
#O(n^2)
fish = ["fish", "fiiish", "fiiiiish", "fiiiish", "fffish", "ffiiiiisshh", "fsh", "fiiiissshhhhhh"]
def bubble_sort!(array)
  len = array.length - 1
  sorted = false

  until sorted
    sorted = true
    (0...len).each do |idx|
      if array[idx].length > array[idx + 1].length
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        sorted = false
      end
    end
  end

  array
end

p bubble_sort!(fish)


fish = ["fish", "fiiish", "fiiiiish", "fiiiish", "fffish", "ffiiiiisshh", "fsh", "fiiiissshhhhhh"]
#O(n log n)
class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = count / 2
    sorted_left = self.take(mid).merge_sort(&prc)
    sorted_right = self.drop(mid).merge_sort(&prc)

    self.class.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged + left + right
  end
end

p fish.merge_sort


#linear
def sort(arr)
  longest = nil
  arr.each do |el|
    if longest.nil? || el.size > longest.size
      longest = el
    end
  end
  longest
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
#  O(n) time
def slow_dance(dir, tiles)

  tiles.each_with_index do |tile, i|
    return i if tile == dir
  end
end
p slow_dance("right", tiles_array)



# O(1)
tiles = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end
