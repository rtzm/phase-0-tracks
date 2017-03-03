class TodoList
    def initialize(list_items)
        @list_items = list_items
    end

    def get_items
        @list_items
    end 

    def add_item(new_item)
        @list_items << new_item
    end 

    def delete_item(removed_item)
        @list_items.delete(removed_item)
    end

    def get_item(index)
        @list_items[index]
    end 
end