class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :front
      t.text :back
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
