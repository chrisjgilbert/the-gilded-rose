require 'generic'

describe Generic do

  describe '#update_quality' do
    it "never lowers quality below 0" do
      item = Generic.new("item", 0, 0)
      item.update_quality
      expect(item.quality).to eq(0)
    end

    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        item = Generic.new("item", 1, 1)
        item.update_quality
        expect(item.quality).to eq(0)
      end
    end

    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        item = Generic.new("item", 0, 2)
        item.update_quality
        expect(item.quality).to eq(0)
      end
    end
  end

  describe '#update_sell_in' do
    it "lowers the sell_in by one after a day" do
      item = Generic.new("item", 1, 0)
      item.update_sell_in
      expect(item.sell_in).to eq 0
    end
  end
end
