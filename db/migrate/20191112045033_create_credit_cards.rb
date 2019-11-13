class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.integer :card_number ,null:false
      t.integer :expiration_date_m ,null:false
      t.integer :expiration_date_y ,null:false
      t.integer :security_code ,null:false
      t.integer :card_company ,null:false
    end
  end
end
