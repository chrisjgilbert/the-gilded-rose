require 'item'

class BackstagePass < Item

  def update
    return unless @quality <= 50
    if @sell_in <= 0
      @quality = 0
    elsif @sell_in <= 10 && @sell_in > 5
      @quality < 49 ? @quality += 2 : @quality += 1
    elsif @sell_in <= 5 && @sell_in > 0
      @quality < 48 ? @quality += 3 : @quality += 2
    elsif @quality < 50
      @quality += 1
    end
    @sell_in -= 1
  end

end
