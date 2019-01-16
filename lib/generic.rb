require_relative 'item'

class Generic < Item

  def update_quality
    if @quality > 0
      @sell_in > 0 ? @quality -= 1 : @quality -= 2
    end

  end

  def update_sell_in
    @sell_in -= 1
  end

end
