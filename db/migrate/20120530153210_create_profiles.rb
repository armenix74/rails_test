class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string  :first_name
      t.string  :last_name
      t.date    :birthdate
      t.string  :gender
      t.integer  :user_id, :null=>false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
