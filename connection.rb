require 'mysql2'

class Connection

  @instance = new

  private_class_method :new
  
  def self.get_instance
    @instance
  end

  def create_connection
    if @client == nil
      begin 
        @client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :database => 'singleton', :password => '12345678')
      rescue Exception => e
        puts "Error creating an instance of mysql: #{e.message}"
        raise
      end
    else
      puts "Already created instance"
    end
 end

  def query(sentence)
     @client.query(sentence)
  end
end

connection = Connection.get_instance
connection2 = Connection.get_instance

if connection == connection2
  puts "yep"
else 
  puts "nou"
end

connection.create_connection

connection.query("select * from users").each{ |user| puts user  }
