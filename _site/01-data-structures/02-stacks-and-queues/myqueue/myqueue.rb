class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
		@tail = @queue[-1] # added by Tom
  end

  def enqueue(element)
		@queue.insert(0, element)
		@head = @queue[0]
		@tail = @queue[-1]
  end

  def dequeue
		@queue.delete(@queue[-1])
		@tail = @queue[-1]
  end

  def empty?
		if @queue.length == 0
			return true
		else
			return false
		end
  end
end