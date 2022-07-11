class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :no_hp
      t.string :gender
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end