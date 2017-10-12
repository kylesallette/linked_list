require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def test_has_surname
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_next_node
    node = Node.new("Burke")
    assert_nil node.next_node
  end
end
