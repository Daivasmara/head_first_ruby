class ListWithCommas
  attr_accessor :items
  
  def join
    if items.length == 1
      return items[0]
    end

    last_item = items.pop
    "#{items.join(', ')}#{items.length > 1 ? ',' : ''} and #{last_item}"
  end
end
