require "spec_helper"
require "gilded_rose"

describe GildedRose do

let(:item) { [Item.new("foo", 0, 0)] }
subject(:gilded_rose) { described_class.new(item) }

  describe '#update_quality' do
    it 'does not change the name' do
      items = item
      gilded_rose.update_quality()
      expect(items[0].name).to eq "foo"
    end

    it 'Lowers sell in value by 1 at the end of the day' do |item_name|
      item = Item.new(item_name, sell_in = 1, quality = 0)
      items = [:item]
      gilded_rose.update_quality
    end


    
  end
end
