class Stack
  def initialize
    @stack = []
    @size = 0
  end

  def push(item)
    @size += 1
    @stack.push(item)
  end

  def pop
    @size -= 1
    @stack.pop
  end

  def size
    @size
  end
end
