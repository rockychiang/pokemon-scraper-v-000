class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @type = data[:type]
    @db = data[:db]
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id_no, db)
    Pokemon.new(db.execute("SELECT * FROM pokemon WHERE id = ?", id_no))
  end
end
