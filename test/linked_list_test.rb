require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    link = LinkedList.new

    assert_instance_of LinkedList, link
  end

  def test_head_returns_nil_when_first_initialized
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_adds_new_node_to_end_of_list
    list = LinkedList.new

    resulting_node = list.append("doop")
    assert_instance_of Node, resulting_node
    assert_equal "doop", resulting_node.data
    assert_equal resulting_node, list.head
  end

  def test_head_next_node

    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  # > list.count
  # => 1
  def test_count_returns_zero_for_empty_list
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_count_returns_one_for_list_with_one_node
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_to_string_returns_correct_sentence_when_one_node_present

    list = LinkedList.new
    list.append("doop")

    resulting_node = list.to_string

    assert_equal "doop", resulting_node
  end

  def test_append_two_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("poop")


    resulting_node = list.head.next_node.data

    assert_equal "deep", resulting_node
  end



end
