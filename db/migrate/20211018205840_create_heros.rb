class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.string :special
      t.integer :spc_atk
      t.string :status

      t.timestamps
    end
  end
end
