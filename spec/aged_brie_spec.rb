require 'aged_brie'

describe AgedBrie do
  it 'raises quality by one after a day' do
    item = AgedBrie.new("Aged Brie", 1, 0)
    item.update
    expect(item.quality).to eq(1)
  end

  it 'never raises quality beyond 50' do
    item = AgedBrie.new("Aged Brie", 1, 50)
    item.update
    expect(item.quality).to eq(50)
  end
end
