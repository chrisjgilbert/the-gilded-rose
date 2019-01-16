require_relative 'item'

class Generic < Item

  def self.update(item)
    if item.quality > 0
      item.sell_in > 0 ? item.quality -= 1 : item.quality -= 2
    end
    item.sell_in -= 1
  end

end
