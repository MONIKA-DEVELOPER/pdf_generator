class Candidate < ApplicationRecord
  NAME_REGEX = /^[a-zA-Z ]*$/
  validates :name,  presence: true, format: { with: NAME_REGEX , multiline:true, message: "can contain alphabets only" }
  validates :date,  presence: true
  ONLY_INTEGERS = /[1-9]\d*|0\d+/
  validates :installment_payment,  presence: true , format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
  validates :due_date,  presence: true
  validates :unit_no,  presence: true, format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
  validates :payment_plan,  presence: true
  validates :work_stage,  presence: true
  validates :installment_no,  presence: true, format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
  validates :cheque,  presence: true
  validates :account_no,  presence: true, format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
  validates :ifsc_code,  presence: true
  validates :bank_details,  presence: true
  validates :authorized_sign,  presence: true
  validates :due_amount, presence:true, format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
  validates :interest_on_delayed_payment,  presence: true , format: { with: ONLY_INTEGERS, multiline:true, message: "can contain numbers only" }
end
