class Queue
  def initialize
    @stack1, @stack2 = Stack.new, Stack.new
  end

  def enqueue(item)
    if @stack2.size > 0
      @stack1.push(@stack2.pop) until @stack2.size == 0
    end
    @stack1.push(item)
  end

  def dequeue
    if @stack2.size == 0
      @stack2.push(@stack1.pop) until @stack1.size == 0
    end
    @stack2.pop
  end
end
