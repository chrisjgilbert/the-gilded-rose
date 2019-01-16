require_relative './generic'
require_relative './aged_brie'
require_relative './backstage_pass'

class GildedRose

  def initialize(items)
    @items = items
  end

  def sulfuras
  end

  def generic_ticket(item)
    Generic.update(item)
  end

  def aged_brie_ticket(item)
    item.update
  end

  def backstage_pass_ticket(item)
    BackstagePass.update(item)
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "Sulfuras, Hand of Rangaros"
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
