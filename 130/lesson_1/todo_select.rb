class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description=" ")
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :tite

  def initialize(title)
    @title = title
    @todos = []
  end


 

  def size
    @todos.size
  end

  def first
    @todos[0]
  end

  def last
    @todos[-1]
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def done?
    @todos.all? { |todo| todo.done?}
  end

   def <<(item)
    @todos.push(item)

    raise TypeError, "Can only add Todo objects" if item.class != Todo
  end
  alias_method :add, :<<

  def item_at(position)
    @todos.fetch(position) 
  end

  def mark_done_at(position)
    item_at(position).done!
  end

  def mark_undone_at(position)
    item_at(position).undone!
  end

  def done!
    @todos.each_index do |index|
      mark_done_at(index)
    end
  end

  def remove_at(position)
    @todos.delete(item_at(position))
  end

  def to_s
   output =  "----- #{@title} ----\n"
   output << @todos.map(&:to_s).join("\n")
   output
  end

  def to_a
    @todos
  end

  def each
    @todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
   results = TodoList.new('Selected Items')
   each do |todo|
      results.add(todo) if yield(todo)
    end
    results
  end
end

todo1 = Todo.new('Buy Milk')
todo2 = Todo.new('Clean room')
todo3 = Todo.new('Go to gym')

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

results = list.select { |todo| todo.done? }

puts results.class

results2 = list.each do |todo| 
    puts todo
  end
puts results2.class
