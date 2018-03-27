class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    
  end
  
  def self.save(name, type, db)
    pokemon = Pokemon.new([name, type, db])
  end
end
