require_relative './generic'

class GildedRose

  def initialize(items)
    @items = items
  end

  def sulfuras
  end

  def generic_ticket(item)
    generic = Generic.new(item.name, item.sell_in, item.quality)
    p generic.sell_in
    generic.update
    p generic.sell_in
  end

  def aged_brie_ticket(item)
    return unless item.quality < 50
    if item.sell_in > 0
      item.quality += 1
    elsif item.sell_in < 1
      item.quality < 49 ? item.quality += 2 : item.quality += 1
    end
  end

  def backstage_pass_ticket(item)
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

  def update_quality
    @items.each do |item|
      case item.name
      when '"Sulfuras, Hand of Rangaros"'
        sulfuras
        return
      when "item"
        generic_ticket(item)
        return
      when "Aged Brie"
        aged_brie_ticket(item)
        return
      when "Backstage passes to a TAFKAL80ETC concert"
        backstage_pass_ticket(item)
        return
      end
    end
  end
end
