class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :resume
      t.text :content
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
