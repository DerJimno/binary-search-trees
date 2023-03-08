class Node
  attr_accessor :data, :left, :right
  include Comparable

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def <=>(new_data)
    data <=> new_data.data
  end
end