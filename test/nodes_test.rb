require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def test_node_exists
    node = Node.new("plop")

    assert_instance_of Node, node
  end

  def test_node_has_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_next_node_returns_nil
    node = Node.new("plop")

    assert_nil node.next_node
  end

end
