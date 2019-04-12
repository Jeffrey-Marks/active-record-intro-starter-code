class CreateMagazines < ActiveRecord::Migration[4.2]
  def change
    create_table :magazines do |t|
      t.string :namer
      t.string :category
    end
  end
end
