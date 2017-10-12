

require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_head_is_nil_by_default
    # skip
    list = LinkedList.new

    assert_nil list.head
  end

  def test_can_append_a_surname
    #skip
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_can_append_two_surnames
    #skip
    list = LinkedList.new

    list.append("West")
    list.append("Swift")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname

    assert_instance_of Node, list.head.next_node
    assert_equal "Swift", list.head.next_node.surname

    assert_equal 2 , list.count


    assert_equal "The West family, followed by the Swift family", list.to_string

    end

  def test_can_append_five_surnames
    #skip
    list = LinkedList.new

    list.append("Burke")
    list.append("West")
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Brooks")

    assert_instance_of Node, list.head
    assert_equal "Burke", list.head.surname

    assert_instance_of Node, list.head.next_node
    assert_equal "West", list.head.next_node.surname

    assert_instance_of Node, list.head.next_node
    assert_equal "Rhodes", list.head.next_node.next_node.surname

    assert_instance_of Node, list.head.next_node
    assert_equal "Hardy", list.head.next_node.next_node.next_node.surname

    assert_instance_of Node, list.head.next_node
    assert_equal "Brooks", list.head.next_node.next_node.next_node.next_node.surname

  end

  def test_it_counts
     #skip
     list = LinkedList.new

     list.append("Burke")
     list.append("West")
     list.append("Rhodes")
     list.append("Hardy")
     list.append("Brooks")

     assert_instance_of Node, list.head
     assert_equal "Burke", list.head.surname

     assert_instance_of Node, list.head.next_node
     assert_equal "West", list.head.next_node.surname

     assert_instance_of Node, list.head.next_node
     assert_equal "Rhodes", list.head.next_node.next_node.surname

     assert_instance_of Node, list.head.next_node
     assert_equal "Hardy", list.head.next_node.next_node.next_node.surname

     assert_instance_of Node, list.head.next_node
     assert_equal "Brooks", list.head.next_node.next_node.next_node.next_node.surname

     assert_equal 5 , list.count
  end

  def test_to_s
     #skip
     list = LinkedList.new
     list.append("West")
     list.append("Rhodes")
     assert_equal "The West family, followed by the Rhodes family", list.to_string
  end

  def prepend_test
    #skip
    list = LinkedList.new
    list.append("Brooks")

    assert_instance_of Node, list.head
    assert_equal "Brooks", list.head.surname

    assert_equal "The Brooks family", list.to_string

    list.append("Henderson")
    assert_equal "Henderson", list.head.next_node.surname

    list.prepend_node("Mckinney")

    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end
end
