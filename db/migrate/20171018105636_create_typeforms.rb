class CreateTypeforms < ActiveRecord::Migration[5.1]
  def change
    create_table :typeforms do |t|
      t.string :movie
      t.string :adjective
      t.boolean :hawaiian
      t.integer :messi

      t.timestamps
    end
  end
end
