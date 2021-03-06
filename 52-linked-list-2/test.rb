require 'minitest/autorun'
require 'minitest/pride'

require_relative 'linked_list'

class LinkedListProxyTest < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new((0..100).to_a)
  end

  def test_head_is_num
    assert_equal 0, @list.head
  end

  def test_tail_is_num
    assert_equal 100, @list.tail
  end

  def test_add
    @list.add(101)
    assert_equal 101, @list.tail
  end

  def test_square_bracket
    assert_equal 51, @list.[](51)
    assert_equal 51, @list[51]
    assert_equal 51, @list.index(51).datum
  end

  def test_first_index_is_zero
    assert_equal @list.head, @list[0]
  end

  def test_insert
    skip
    assert_equal 51, @list[51]
    assert_equal 52, @list[52]

    @list.insert(52, 52.5)

    assert_equal 51,   @list[51]
    assert_equal 52.5, @list[52]
    assert_equal 52,   @list[53]
  end

  def test_delete
    skip
    assert_equal 51, @list[51]
    assert_equal 52, @list[52]
    assert_equal 53, @list[53]

    @list.delete(52)

    assert_equal 51,   @list[51]
    assert_equal 53,   @list[52]
  end

end

class LinkedListTest < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new([1])
    @head = @list.instance_variable_get(:@head)
  end

  def test_head
    skip
    assert_equal Element, @head.class
  end

  def test_head_datum
    skip
    assert_equal 1, @head.datum
  end

  def test_add_next
    skip
    @head.next = Element.new(2)

    refute_nil @head.next
    assert_equal Element, @head.next.class
    assert_equal 2, @head.next.datum
  end
end

class LinkedListRangeTest < MiniTest::Unit::TestCase
  def setup
    @list = LinkedList.new((1..10).to_a)
    @head = @list.instance_variable_get(:@head)
  end

  def test_head_next
    skip
    assert_equal 2, @head.next.datum
  end

  def test_10_deep
    skip
    assert_equal 10, @head.next.next.next.next.next.next.next.next.next.datum
  end
end
