"
What To Implement:
Linked List Heap
Array Heap
"
class AHeap

attr_reader :heap

def initialize()
@heap = []
end

def insert(item)
item.each do |element|
@heap.push element
upHeap(@heap.length - 1)
end
end

def delete()
@heap.delete_at(0)

if not empty
lastElement = @heap.pop
@heap.insert(0, lastElement)
downHeap(0)
end 
end

def empty()
return false if @heap.length > 0
return true
end


def upHeap(i)
if parentExists(i)
parentIndex = ((i - 1) / 2).floor

if @heap[parentIndex] < @heap[i]
swap(i, parentIndex)
upHeap(parentIndex)
end
end
end

def downHeap(i)
if smallerThanChildren(i)
greatestChildI = greatestChildI?(i)
swap(i, greatestChildI)
downHeap(greatestChildI)
end
end

def swap(a, b)
@heap[a], @heap[b] = @heap[b], @heap[a]
end

def parentExsits(i)
return i != 0
end

def smallerThanChildren(i)
if @heap.length < 2 * i + 2

return false
elsif @heap.length == 2 * i + 2
return @heap[i] < @heap[2 * i + 1] || @heap[i] < @heap[2 * i + 2]
end 
end

def greatestChildI?(i)

return 2 * i + 1 if @heap.length == 2 * i + 2

if @heap[2 * i + 1] > @heap[2 * i + 2]
return 2 * i + 1
else
return 2 * i + 2
end
end
end


class LHeap
  attr_reader :heap

  def initialize()
    @heap = @node.new
  end

  def insert(item)
    @node = Node.new(item)
	@node = @head.next
	@head.next = @node
	if @count < 1
	@tail.next = @node
	end
	@count += 1
	upHeap(@heap.array.length - 1)
	end
  end

  def delete(item)
    first = @head
	second = @head.next
	while second != @tail
	if second.item = item
	count -= 1
	first.next = second.next
	return true
	end
	first = first.next
	second = second.next
	end 
	false
	downHeap(0)
    end
  end

  def empty?()
    return false if @heap.array.length > 0
    return true
  end

  def upHeap(i)
if parentExists(i)
parentIndex = ((i - 1) / 2).floor

if @heap.array[parentIndex] < @heap.array[i]
swap(i, parentIndex)
upHeap(parentIndex)
end
end
end

def downHeap(i)
if smallerThanChildren(i)
greatestChildI = greatestChildI?(i)
swap(i, greatestChildI)
downHeap(greatestChildI)
end
end

  def swap(a, b)
    @node[a], @node[b] = @node[b], @node[a]
  end

  def parentExsits(i)
    return i != 0
  end

  def smallerThanChildren?(i)
	@node.array.length = < 2 * i + 2
	
	return false
	elsif @node.array.length == 2 * i + 2
	return @node.array[i] < @heap.array[2 * i + 1] || @heap.array[i] < @heap.array[2 * i + 2]
  end
  end


  def greatestChildI?(i)
	
return 2 * i + 1 if @heap.array.length == 2 * i + 2

if @heap.array[2 * i + 1] > @heap.array[2 * i + 2]
return 2 * i + 1
else
return 2 * i + 2
end
end
  end
  
  def toArray
  array = []
  i = @head.next
  while i != @tail
  array << i.data
  i = i.next
  end
  array
end
