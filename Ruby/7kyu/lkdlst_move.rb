=begin


Description:

Linked Lists - Move Node

Write a MoveNode() function which takes the node from the front of the source l
ist and moves it to the front of the destintation list. You should throw an 
error when the source list is empty. For simplicity, we use a Context object to
store and return the state of the two linked lists. A Context object containing
the two mutated lists should be returned by moveNode.

MoveNode() is a handy utility function to have for later problems.

source = 1 -> 2 -> 3 -> nil
dest = 4 -> 5 -> 6 -> nil
move_node(source, dest).source == 2 -> 3 -> nil
move_node(source, dest).dest == 1 -> 4 -> 5 -> 6 -> nil
The push() and buildOneTwoThree() functions need not be redefined.

=end

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class Context
  attr_accessor :source, :dest
  def initialize(source, dest)
    @source = source
    @dest = dest
  end
end

def move_node(source,dest)
  # Good Luck!
  throw "Error" if source.empty?
  moving_node = source[0]
  moving_node.next = dest[0].data
  source.delete_at(0)
  dest.insert(0,moving_node)
  Context.new(source,dest)
end