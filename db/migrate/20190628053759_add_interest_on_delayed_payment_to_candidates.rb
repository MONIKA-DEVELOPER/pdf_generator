class AddInterestOnDelayedPaymentToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :interest_on_delayed_payment, :integer
  end
end
