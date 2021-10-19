class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.date :date_of_birth
      t.integer :score

      t.timestamps
    end
  end
end