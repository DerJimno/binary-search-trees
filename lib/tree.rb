require_relative 'node'

class Tree
  attr_accessor :root, :array

  def initialize(array)
    @array = array
  end

  def build_tree(array, starting = 0, ending = array.sort.uniq.length - 1)
    return if starting > ending
    mid = (starting + ending) / 2
    node = Node.new(array.sort.uniq[mid])
    
    node.left = build_tree(array, starting, mid - 1)
    node.right = build_tree(array, mid + 1, ending)
    node
  end
end

tr = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

@root = tr.build_tree(tr.array)
p @root