#Paired with Robert Turner

class TodoList

    attr_accessor :list

    def initialize(array = [])
      @list = array
    end

    def add_item(item)
      @list << item
    end

    def get_item(index)
      @list[index]
    end

    def get_items
      @list
    end

    def delete_item(item)
      @list.delete(item)
    end

end