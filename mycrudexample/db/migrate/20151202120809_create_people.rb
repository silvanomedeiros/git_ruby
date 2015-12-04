class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :cpf
      t.date :birthday
      t.boolean :gender

      t.timestamps null: false
    end
  end
end
