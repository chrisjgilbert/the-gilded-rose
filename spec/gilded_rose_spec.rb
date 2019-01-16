require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update" do

    it "only tells item to update_sell_in if item sell in above 0" do
      item = double(:item, name: 'foo', update_sell_in: 1)
      allow(item).to receive(:update_quality)
      expect(item).to receive(:update_sell_in)
      GildedRose.new([item]).update
    end

    it "does not change the name" do
      item = double(:item, name: 'foo')
      allow(item).to receive(:update_quality)
      allow(item).to receive(:update_sell_in)
      GildedRose.new([item]).update
      expect(item.name).to eq "foo"
    end

    context 'when item is generic' do
      it 'tells item to update quality' do
        item = double(:item, name: 'item')
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update
      end

      it 'tells item to update sell_in' do
        item = double(:item, name: 'item')
        allow(item).to receive(:update_quality)
        expect(item).to receive(:update_sell_in)
        GildedRose.new([item]).update
      end
    end

    context 'when item is Aged Brie' do
      it 'tells aged brie to update quality' do
        item = double(:item, name: 'Aged Brie')
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update
      end

      it 'tells aged brie to update sell_in' do
        item = double(:item, name: 'Aged Brie')
        allow(item).to receive(:update_quality)
        expect(item).to receive(:update_sell_in)
        GildedRose.new([item]).update
      end
    end

    context 'when item is Sulfuras, Hand of Ragnaros' do
      it 'tells sulfuras to update quality' do
        item = double(:item, name: "Sulfuras, Hand of Rangaros")
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update
      end

      it 'tells sulfuras to update sell_in' do
        item = double(:item, name: "Sulfuras, Hand of Rangaros")
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update
      end
    end

    context 'when item is Backstage passes to a TAFKAL80ETC concert' do
      it "tells backstage pass to update quality" do
        item = double(:item, name: "Backstage passes to a TAFKAL80ETC concert")
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update
      end

      it "tells backstage pass to update sell_in" do
        item = double(:item, name: "Backstage passes to a TAFKAL80ETC concert")
        allow(item).to receive(:update_quality)
        expect(item).to receive(:update_sell_in)
        GildedRose.new([item]).update
      end
    end
  end
end
