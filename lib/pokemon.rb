class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    @name = data[0]
    @type = data[1]
    @id = data[2]
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
    temp = {id: pokemon[0], name: pokemon[1]}
  end
end
