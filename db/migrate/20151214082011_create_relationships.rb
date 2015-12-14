class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :followr, index: true
      t.references :followed, index: true

      t.timestamps null: false
      
      t.index [:followr_id, :followed_id], unique: true
    end
  end
end
