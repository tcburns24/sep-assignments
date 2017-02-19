class MyStack
  def initialize
    @stack = Array.new
		@top_index = -1
  end

  def push(item)
		@top_index += 1
		@stack[@top_index] = item
  end
	
	# item0 | item1 | item2 | item3
	# @top_index = 3
	# @top_index -= 1 # 2
	# @top_index -= 1 # 1
	# @top_index -= 1 # 0
	# @top_index -= 1 # -1
	
	def top
		if @top_index > -1
			@stack[@top_index]
		end
	end
	
  def pop
		@top_index -= 1
		return @stack[@top_index + 1]
	end

  def empty?
		if @stack.length == 0
			return true
		else
			return false
		end
  end
end