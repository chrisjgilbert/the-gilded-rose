require_relative './item'

class AgedBrie < Item

  def update_quality
    return unless @quality < 50
    if @sell_in > 0
      @quality += 1
    elsif @sell_in < 1
      @quality < 49 ? @quality += 2 : @quality += 1
    end
  end

  def update_sell_in
    @sell_in -= 1
  end

end
