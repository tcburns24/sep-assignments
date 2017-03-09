require_relative 'node'

class BinarySearchTree

  def initialize(root)
		@root = root
  end
	
	def insert(root, node)
		if node.rating > root.rating
			if root.right.nil?
				root.right = node
			else
				insert(root.right, node)
			end
		else
			if root.left.nil?
				root.left = node
			else
				insert(root.left, node)
			end
		end
	end

  # Recursive Depth First Search
  def find(root, data)
		if root.nil? || data.nil?
			return nil
		else
			if root.title == data
				return root
			elsif root.left != nil
				find(root.left, data)
			elsif root.right != nil
				find(root.right, data)
			end
		end
  end

  def delete(root, data)
		if root.nil? || data.nil?
			return nil
		else
			target = find(root, data)
			if target.nil?
				return nil
			else
				target.title = nil && target.rating = nil
			end
		end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
		queue = [@root]
		result = []
		while queue.length > 0
			new_root = queue.shift
			if new_root.left != nil
				queue.push(new_root.left)
			end
			if new_root.right != nil
				queue.push(new_root.right)
			end
			result.push("#{new_root.title}: #{new_root.rating}")
		end
		result.each { |movie| puts movie }
  end
end
	
