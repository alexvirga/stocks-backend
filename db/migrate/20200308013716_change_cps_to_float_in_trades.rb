class ChangeCpsToFloatInTrades < ActiveRecord::Migration[5.2]
  def change
    change_column :trades, :cost_per_share, :float
  end
end
