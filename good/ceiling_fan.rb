class CeilingFan
  
  def initialize
    @current_state = Off.new
  end

  def set_state(state)
    @current_state = state
  end

  def pull
    @current_state.pull(self)
  end

end


module Pullable

  def pull(wrapper)
    puts "Something has to happen whit the pull chain and the #{wrapper}"
  end

end

class Off

  include Pullable

  def initialize
    puts "On off"
  end

  def pull(wrapper)
    wrapper.set_state(Low.new)
  end

end

class Low

  include Pullable
  
  def initialize
    puts "#{self.class.name} speed"
  end

  def pull(wrapper)
    wrapper.set_state(Medium.new)
  end

end

class Medium

  include Pullable
 
  def initialize
    puts "#{self.class.name} speed"
  end

  def pull(wrapper)
    wrapper.set_state(High.new)
  end

end

class High

  include Pullable

  def initialize
    puts "#{self.class.name} speed"
  end

  def pull(wrapper)
    wrapper.set_state(Off.new)
  end

end
