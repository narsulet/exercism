class AssemblyLine
  def initialize(speed)
    @speed = speed
    @cars_produced = 221
  end

  def production_rate_per_hour
    cars_produced_at_speed = @speed * @cars_produced;
    if @speed === 10
      return cars_produced_at_speed * 0.77
    elsif @speed === 9
      return cars_produced_at_speed * 0.80
    elsif @speed >= 5 and @speed <= 8
      return cars_produced_at_speed * 0.90
    elsif @speed >= 1 and @speed <= 4
      return cars_produced_at_speed
    end
  end

  def working_items_per_minute
    (production_rate_per_hour()/60).to_i
  end
end
