class ChangeDataStartTimeToBudget < ActiveRecord::Migration[7.1]
  def change
    change_column :budgets, :start_time, :date
  end
end
