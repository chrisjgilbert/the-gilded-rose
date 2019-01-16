require_relative './generic'
require_relative './aged_brie'
require_relative './backstage_pass'
require_relative './sulfuras'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.update_quality
      item.update_sell_in
    end
  end
end
