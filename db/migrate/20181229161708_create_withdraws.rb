class CreateWithdraws < ActiveRecord::Migration[5.2]
  def change
    create_table :withdraws do |t|
      t.date :date
      t.decimal :amount

      t.timestamps
    end
  end
end
