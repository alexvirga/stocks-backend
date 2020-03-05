class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string :stock
      t.integer :cost_per_share
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
