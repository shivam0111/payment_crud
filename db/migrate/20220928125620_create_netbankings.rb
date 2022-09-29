class CreateNetbankings < ActiveRecord::Migration[7.0]
  def change
    create_table :netbankings do |t|
      t.integer :netid
      t.string :password
      t.timestamps
    end
  end
end
