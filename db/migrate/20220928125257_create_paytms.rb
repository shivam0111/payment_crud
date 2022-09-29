class CreatePaytms < ActiveRecord::Migration[7.0]
  def change
    create_table :paytms do |t|
      t.integer :mobile
      t.string :name
      t.timestamps
    end
  end
end
