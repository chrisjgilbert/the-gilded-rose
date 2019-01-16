class GildedRose

  def initialize(items)
    @items = items
  end

  def update
    @items.each do |item|
      item.update_quality
      item.update_sell_in
    end
  end
end
