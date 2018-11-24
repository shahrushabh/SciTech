class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :repository_id
      t.integer :author_id

      t.timestamps
    end
  end
end
