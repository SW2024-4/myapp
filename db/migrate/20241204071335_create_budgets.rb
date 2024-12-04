class CreateBudgets < ActiveRecord::Migration[7.1]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.date :date
      t.integer :income
      t.integer :expend

      t.timestamps
    end
  end
end
