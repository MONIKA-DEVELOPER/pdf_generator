class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to show_path
    else
      render 'new'
    end
  end

  def show
    @candidates = Candidate.all
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])

   if @candidate.update(candidate_params)
    redirect_to show_path
   else
    render 'edit'
   end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
    redirect_to show_path
  end

  def pdf
    # @result_id = params[:id]
		content = create_pdf
		candidate_details = WickedPdf.new.pdf_from_string(content)
		save_path = "#{Rails.root}/public/candidates.pdf"
		File.open(save_path, 'wb') do |file|
		  file << candidate_details
		end
		redirect_to "/candidates.pdf" and return
  end

  def create_pdf
		@candidate = Candidate.find(params[:id])
    render_to_string :report, layout: false
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :date, :installment_payment, :due_date, :unit_no, :payment_plan, :work_stage, :installment_no, :cheque, :account_no, :ifsc_code, :bank_details, :authorized_sign, :due_amount, :interest_on_delayed_payment )
  end
end
