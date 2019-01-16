class AgedBrie

  def self.update(item)
    return unless item.quality < 50
    if item.sell_in > 0
      item.quality += 1
    elsif item.sell_in < 1
      item.quality < 49 ? item.quality += 2 : item.quality += 1
    end
  end

end
