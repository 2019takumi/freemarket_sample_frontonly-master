class CreatePersonalInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_informations do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_k, null: false
      t.string :first_name_k, null: false
      t.integer :prefecture
      t.string :municipalities
      t.string :address
      t.string :building
      t.integer :birthday_y, null: false
      t.integer :birthday_m, null: false
      t.integer :birthday_d, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
