class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(pokemon)
    binding.pry
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id_no, db)
    Pokemon.new(db.execute("SELECT * FROM pokemon WHERE id = ?", id_no))
  end
end
