class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.string :card_status
      t.references :user, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
