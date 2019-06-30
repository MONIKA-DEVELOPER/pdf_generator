class AddDueAmountToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :due_amount, :integer
  end
end
