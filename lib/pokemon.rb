class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    @id = data[id]
    @name = data[name]
    @type = data.type
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon = Pokemon.new(db.execute("SELECT * FROM pokemon WHERE id = ?", id))
    pokemon
  end
end
