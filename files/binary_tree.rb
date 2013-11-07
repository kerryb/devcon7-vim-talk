class BinaryTree
  class Node
    attr_reader :value, :left, :right

    def initialize( value, left=nil, right=nil)
      @value = value
      @left, @right = left, right
    end

    def insert( value )
      if value >= @value then
        # insert right
        if @right.nil?
          @right = Node.new( value )
        else
          @right.insert( value )
        end
      else
        # insert left
        if @left.nil?
          @left = Node.new( value )
        else
          @left.insert( value )
        end
      end
    end

    # depth first (from left to right)
    def traverse(&b)
      @left.traverse(&b) if @left
      b.call(self)
      @right.traverse(&b) if @right
    end
  end

  attr_reader :root

  def initialize
    @root = nil
  end

  def insert( value )
    if @root.nil?
      @root = Node.new( value )
    else
      @root.insert( value )
    end
  end

  def traverse(&b)
    return if @root.nil?
    @root.traverse(&b)
  end
end

def binary_sort( array )
  tree = BinaryTree.new

  # fill tree with array elements
  array.each do |e|
    tree.insert( e )
  end

  sorted_array = []
  tree.traverse do |node|
    sorted_array << node.value
  end

  return sorted_array
end

if __FILE__ == $0
  p binary_sort( [0,6,4,3,5,8,4,6] ) # => [0, 3, 4, 4, 5, 6, 6, 8]
end
