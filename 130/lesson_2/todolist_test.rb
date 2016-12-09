require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'todolist'

class TodoTest < Minitest::Test
  def setup
    @todo1 = Todo.new("Buy Milk")
    @todo2 = Todo.new("Clean Room")
    @todo3 = Todo.new("Go to gym")
  end

  def test_done!
    @todo1.done!
    assert_equal(true, @todo1.done?)
    assert_equal(false, @todo2.done?)
  end

  def test_done?
    @todo2.done!
    assert_equal(false, @todo1.done)
    assert_equal(true, @todo2.done)
  end

  def test_undone!
    @todo1.done!
    @todo2.done!
    @todo3.done!

    assert_equal(true, @todo1.done?)

    @todo1.undone!
    assert_equal(false, @todo1.done?)
  end

  def test_to_s
    output = "[X] Buy Milk"
    @todo1.done!
    assert_equal(output, @todo1.to_s)
  end

  def test_initialize
    @todo4 = Todo.new("Walk dog")
    assert_equal("Walk dog", @todo4.title)
    assert_equal(" ", @todo4.description)
  end


end

class TodoListTest < Minitest::Test

  def setup
    @todo1 = Todo.new("Buy Milk")
    @todo2 = Todo.new("Clean Room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)

  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_raises_type_error
    assert_raises(TypeError) { @list.add(4) }
    assert_raises(TypeError) { @list.add("Not a todo object") }
    assert_raises(TypeError) { @list.add([1, 2, 3]) }
  end

  def test_shovel
    @todo4 = Todo.new("Do Homework")
    assert_equal(3, @list.size)
    @list << @todo4
    assert_equal(4, @list.size)

    # alternatively (given solution)
    # new_todo = Todo.new("Walk dog")
    # @list << new_todo
    # @todos << new_todo

    # assert_equal(@todos, @list)
  end

  def test_add
    @todo4 = Todo.new("Walk Dog")
    @list.add(@todo4)
    @todos << @todo4

    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo3, @list.item_at(2))
    assert_raises(IndexError) { @list.item_at(6) }
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(100)}
    @list.mark_done_at(1)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(8) }
    @todo1.done!
    @todo2.done!

    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_done!
    @list.done!

    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end

  def remove_at
    assert_raises(IndexError) { @list.remove_at(42) }
    @list.remove_at(2)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_to_s
    output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ----- Today's Todos -----
    [ ] Buy Milk
    [ ] Clean Room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s
    output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ----- Today's Todos -----
    [X] Buy Milk
    [ ] Clean Room
    [ ] Go to gym
    OUTPUT

    @todo1.done!

    assert_equal(output, @list.to_s)
  end

  def test_to_s
     output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ----- Today's Todos -----
    [X] Buy Milk
    [X] Clean Room
    [X] Go to gym
    OUTPUT

    @list.done!

    assert_equal(output, @list.to_s)
  end

  def test_each
    result = []
    @list.each { |todo| result << todo}
    assert_equal([@todo1, @todo2, @todo3], result)
  end

  def test_each
    returned = @list.each { }
    assert_equal(returned, @list)

    # alternatively
    assert_equal(@list, @list.each { |todo| nil} )
  end

  def test_select
    returned = @list.select {|todo| todo.title = 'Buy Milk'}
    assert_instance_of(TodoList, returned)
  end

  def test_find_by_title
    assert_equal("[ ] Buy Milk", @list.find_by_title("Buy Milk").to_s)
  end

  def test_all_done
    @todo1.done!
     output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ----- Selected Items -----
    [X] Buy Milk
     OUTPUT

    assert_equal(output, @list.all_done.to_s)
  end

  def test_all_not_done
       output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ----- Selected Items -----
    [ ] Buy Milk
    [ ] Clean Room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.all_not_done.to_s)

  end

end













