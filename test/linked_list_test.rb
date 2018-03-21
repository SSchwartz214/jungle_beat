require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop",list.head.data
  end

  def test_head_next_node
    list = LinkedList.new
    list.append("doop")
    list.append("woo")
    list.append("dop")

    assert_equal "woo", list.head.next_node.data
  end

end







# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
