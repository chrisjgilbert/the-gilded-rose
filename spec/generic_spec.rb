require 'generic'

describe Generic do
  context 'before sell_in' do
    it 'lowers quality by one after one day' do
      item = Generic.new("item", 1, 1)
      item.update
      expect(item.quality).to eq(0)
    end
  end

  context 'after sell_in' do
    it 'lowers quality by two after a day' do
      item = Generic.new("item", 0, 2)
      item.update
      expect(item.quality).to eq(0)
    end
  end
end
