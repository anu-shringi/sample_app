class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :folloed_id

      t.timestamps
    end

    add_index :relationships, :follower_id
    add_index :relationships, :folloed_id
    add_index :relationships, [:follower_id, :folloed_id ], unique: true
    
  end
end
