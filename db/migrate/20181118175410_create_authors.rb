class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :nick
      t.string :homepage
      t.string :linkedin

      t.timestamps
    end
  end
end
