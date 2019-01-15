class GildedRose

  def initialize(items)
    @items = items
  end

  def lengendary
  end

  def generic_ticket(item)
    if item.quality > 0
      item.sell_in > 0 ? item.quality -= 1 : item.quality -=2
    end
    item.sell_in -= 1 if item.sell_in > 0
  end

  def increasing_ticket(item)
    if item.sell_in  > 0
      if item.quality < 50
        item.quality += 1
      end
    end
    if item.sell_in < 1
      if item.quality < 49
        item.quality += 2
      else
        item.quality += 1
      end
    end
  end

  def update_quality
    @items.each do |item|
      case item.name
      when '"Sulfuras, Hand of Rangaros"'
        lengendary
        return
      when "item"
        generic_ticket(item)
        return
      when "Aged Brie"
        increasing_ticket(item)
        return
      end
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
        if item.quality > 0
          if item.name != "Sulfuras, Hand of Ragnaros"
            item.quality = item.quality - 1
          end
        end
      else
        if item.quality < 50
          item.quality = item.quality + 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
            if item.sell_in < 6
              if item.quality < 50
                item.quality = item.quality + 1
              end
            end
          end
        end
      end
      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
      end
      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
              if item.name != "Sulfuras, Hand of Ragnaros"
                item.quality = item.quality - 1
              end
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
      end
    end
  end
end
