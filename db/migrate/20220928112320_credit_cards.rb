class CreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      add_column 
      t.integer :card_number
      t.string :expiration_date
      t.integer :cvv
     
  end
end
end