class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :publisher
      t.string :year
      t.string :collection
      t.string :code
      t.string :patron

      t.timestamps null: false
    end
  end
end
