class Expense < ApplicationRecord
  belongs_to :category

  def self.get_current_month_expenses
    month = Date.today.month
    year = Date.today.year
    get_month_expenses(month, year)
  end

  def self.get_month_expenses(month, year)
    Expense
    .where('extract(month from date) = ? and extract(year from date) = ?', month, year)
    .group(:category)
    .sum(:amount)
  end

  def to_s
    "#{self.date} #{self.amount} #{self.category_id}"
  end
end
