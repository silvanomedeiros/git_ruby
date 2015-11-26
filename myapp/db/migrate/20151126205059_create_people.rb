class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :cpf
      t.string :email
      t.datetime :birthday
      t.string :occupation

      t.timestamps null: false
    end
  end
end
