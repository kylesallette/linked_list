

class LinkedList

  attr_accessor :head



  def initialize
    @head = nil
    @count = 0
  end

  def head
    @head
  end


  def append(surname) # will take multiple paramitors with hashes for surplies
   current = @head
    if @head.nil?
      @head = Node.new(surname)
    else
      while current.next_node != nil
      current = current.next_node
      end
      current.next_node = Node.new(surname)
    end
      @count += 1
  end


  def to_string
   people = @head
   "The #{people.surname} family, followed by the #{people.next_node.surname} family"
  end


  def prepend_node(surname)
  pre_node = Node.new(surname)
      if nil
      @head =  @next_node =  pre_node
      else
      pre_node.next_node = @head
      @head = pre_node
      @count += 1
    end
  end


  def count
     @count
  end
end





















 # def count method
 # gonna need to count the families


 # def to_string
 # The #{blank} family.
