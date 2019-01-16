require 'gilded_rose'
require 'item'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      item = double(:item, name: 'foo')
      allow(item).to receive(:update).and_return(item)
      expect(item.name).to eq "foo"
    end

    context 'when item is generic' do
      it 'tells item to update quality' do
        item = double(:item, name: 'item')
        allow(item).to receive(:update_sell_in)
        expect(item).to receive(:update_quality)
        GildedRose.new([item]).update_quality
      end

      it 'tells item to update sell_in' do
        item = double(:item, name: 'item')
        allow(item).to receive(:update_quality)
        expect(item).to receive(:update_sell_in)
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
