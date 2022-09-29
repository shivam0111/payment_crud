class AddUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :user_id, :int    
    add_column :paytms, :user_id, :int
    add_column :googlepays, :user_id, :int    
    add_column :netbankings, :user_id, :int    
        

    
  end
end
