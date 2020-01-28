class CeilingFan
  
  def initialize
    @state = 0
  end
  
  def pull
    if current_state == 0
      set_state 1
      puts "Low speed"
    elsif current_state == 1
      set_state 2
      puts "Medium speed"
    elsif current_state == 2
      set_state 3
      puts "High speed"
    else
      set_state 0
      puts "Turning off"
    end
  end

  def current_state
    @state
  end

  private

  def set_state(state)
    @state = state
  end

end
