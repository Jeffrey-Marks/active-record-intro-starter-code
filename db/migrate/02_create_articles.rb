class CreateArticles < ActiveRecord::Migration[4.2]
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.integer :magazine_id
      t.string :title
      t.string :content
    end
  end
end
