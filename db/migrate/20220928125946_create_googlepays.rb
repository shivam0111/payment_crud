class CreateGooglepays < ActiveRecord::Migration[7.0]
  def change
    create_table :googlepays do |t|
      t.integer :mobile
      t.string :name
      t.timestamps
    end
  end
end
