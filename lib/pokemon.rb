class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    @name = data[0]
    @type = data[1]
    @db = data[2]
  end
  
  def self.save(name, type, db)
    pokemon = Pokemon.new([name, type, db])
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = ?", id)
  end
end
