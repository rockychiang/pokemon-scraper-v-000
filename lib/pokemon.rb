class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(pokemon)
    @id = pokemon[:id]
    @name = pokemon[:name]
    @type = pokemon[:type]
    @db = pokemon[:db]
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id_no, db)
    binding.pry
    temp = db.execute("SELECT * FROM pokemon WHERE id = ?", id_no)
    Pokemon.new({id: id_no, name: temp[0][1], type: temp[0][2]})
  end
end
