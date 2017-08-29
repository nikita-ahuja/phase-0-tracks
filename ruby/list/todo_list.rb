class TodoList
  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(array)
    @array.push(array)
  end

  def delete_item(array)
    @array.delete(array)
  end

  def get_item(array_index)
    @array[array_index]
  end
end