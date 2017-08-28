class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(list)
    @list.push(list)
  end

  def delete_item(list)
    @list.delete(list)
  end

  def get_item(list_index)
    @list[list_index]
  end
end