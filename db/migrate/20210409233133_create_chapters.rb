class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :short_description
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
