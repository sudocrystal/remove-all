# O(n) solutoin that creates a new array
def removeAll(x)
  filtered = []
  count = 0
  old_size = @size
  @size.times do |i|
    if @storage[i] != x
      filtered[count] = @storage[i]
      count += 1
    end
  end
  @storage = filtered
  @size = count
  return old_size - @size
end

# O(n^2) solution that does not use aux storage
def removeAll(x)
  old_size = @size
  i = 0
  while i < old_size
    if @storage[i] == x
      (old_size-i).times do |j|
        @storage[i+j] = @storage[i+j+1]
      end
      i -= 1
      @size -= 1
    end
    i += 1
  end
  return old_size - @size
end

# O(n) solution that does not use aux storage
def removeAll(x)
  i = 0
  check = 0
  old_size = @size
  while i < old_size
    while i < old_size && @storage[i] != x
      i += 1
    end
    if check <= i
      check = i
    end
    while check < old_size && @storage[check] == x
      check += 1
      @size -= 1
    end
    @storage[i] = @storage[check]
    i += 1
    check += 1
  end
end
