require_relative 'item'

class Generic < Item

  def update
    if @quality > 0
      @sell_in > 0 ? @quality -= 1 : @quality -= 2
    end
    @sell_in -= 1
  end

end
