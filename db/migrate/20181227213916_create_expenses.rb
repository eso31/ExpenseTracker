class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.text :description
      t.date :date
      t.decimal :amount
      t.references :category

      t.timestamps
    end
  end
end
