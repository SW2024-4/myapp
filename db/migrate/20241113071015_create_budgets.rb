class CreateBudgets < ActiveRecord::Migration[7.1]
  def change
    create_table :budgets do |t|
      t.datetime :start_time
      t.integer :expend
      t.integer :income

      t.timestamps
    end
  end
end
