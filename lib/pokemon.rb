class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    @id = data[0]
    @name = data[1]
    @type = data[2]
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon = Pokemon.new(db.execute("SELECT * FROM pokemon WHERE id = ?", id))
    pokemon
  end
end
