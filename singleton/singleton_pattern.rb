require 'mysql2'

class Singleton
 @intance = new
 
  private_class_method :new

  def self.get_instance
    @instance
  end 


end


singleton = Singleton.get_instance
singleton2 = Singleton.get_instance

if singleton == singleton2
  puts "they're equal"
else 
  puts "they're not equal"
end


