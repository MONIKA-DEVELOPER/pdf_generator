class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.date :date
      t.bigint :installment_payment
      t.date :due_date
      t.bigint :unit_no
      t.string :payment_plan
      t.string :work_stage
      t.integer :installment_no
      t.string :cheque
      t.bigint :account_no
      t.string :ifsc_code
      t.string :bank_details
      t.string :authorized_sign

      t.timestamps
    end
  end
end
