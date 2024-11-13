class CreateBudgets < ActiveRecord::Migration[7.1]
  def change
    create_table :budgets do |t|
      t.integer :expend
      t.integer :income
      t.binary :image

      t.timestamps
    end
  end
end
