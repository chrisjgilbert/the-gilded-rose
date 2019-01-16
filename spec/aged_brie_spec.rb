require 'aged_brie'

describe AgedBrie do
  it 'raises quality by one after a day' do
    item = AgedBrie.new("Aged Brie", 1, 0)
    item.update
    expect(item.quality).to eq(1)
  end

  it 'never raises quality beyond 50' do
    item = Item.new("Aged Brie", 1, 50)
    GildedRose.new([item]).update_quality
    expect(item.quality).to eq(50)
  end
end
