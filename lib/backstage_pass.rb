class BackstagePass

  def self.update(item)
    return unless item.quality <= 50
    if item.sell_in <= 0
      item.quality = 0
    elsif item.sell_in <= 10 && item.sell_in > 5
      item.quality < 49 ? item.quality += 2 : item.quality += 1
    elsif item.sell_in <= 5 && item.sell_in > 0
      item.quality < 48 ? item.quality += 3 : item.quality += 2
    elsif item.quality < 50
      item.quality += 1
    end
  end

end
