class CreateRogues < ActiveRecord::Migration[6.1]
  def change
    create_table :rogues do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.string :special
      t.integer :spc_atk
      t.string :location

      t.timestamps
    end
  end
end
