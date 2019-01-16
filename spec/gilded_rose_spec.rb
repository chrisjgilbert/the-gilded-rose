require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      item = Item.new("foo", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.name).to eq "foo"
    end

    xit "lowers the sell_in by one after a day" do
      item = Item.new("item", 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end

    xit "never lowers quality below 0" do
      item = Item.new("item", 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end

    context 'when item is generic' do
      it 'tells item to update' do
        item = double(:item, name: 'item')
        expect(item).to receive(:update)
        GildedRose.new([item]).update_quality
      end
    end

    context 'when item is Aged Brie' do
      it 'tells aged brie to update' do
        item = double(:item, name: 'Aged Brie')
        expect(item).to receive(:update)
        GildedRose.new([item]).update_quality
      end
    end

    context 'when item is Sulfuras, Hand of Ragnaros' do
      it 'tells sulfuras to update' do
        item = double(:item, name: "Sulfuras, Hand of Rangaros")
        expect(item).to receive(:update)
        GildedRose.new([item]).update_quality
      end
    end

    context 'when item is Backstage passes to a TAFKAL80ETC concert' do
      it "tells backstage pass to update" do
        item = double(:item, name: "Backstage passes to a TAFKAL80ETC concert")
        expect(item).to receive(:update)
        GildedRose.new([item]).update_quality
      end
    end
  end
end
