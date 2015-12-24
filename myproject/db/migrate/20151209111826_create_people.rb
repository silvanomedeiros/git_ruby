class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :cpf
      t.string :gender
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
