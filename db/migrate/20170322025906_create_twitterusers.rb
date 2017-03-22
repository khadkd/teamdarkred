class CreateTwitterusers < ActiveRecord::Migration[5.0]
  def change
    create_table :twitterusers do |t|
      t.string :name
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
