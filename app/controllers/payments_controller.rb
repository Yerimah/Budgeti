class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[ show edit update destroy ]

  # GET /payments or /payments.json
  def index
    @payments = Payment.where(user: current_user)
    @category = Category.find(params[:category_id])
  end

  # GET /payments/1 or /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments or /payments.json
  def create
    @payment = Payment.new(payment_params)
    @payment.user = current_user
    
      if @payment.save
         redirect_to category_payments_path, notice: "Payment was successfully created."
        
      else
         render :new, status: :unprocessable_entity
       
      end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
  
      if @payment.update(payment_params)
         redirect_to payment_url(@payment), notice: "Payment was successfully updated."
        
      else
         render :edit, status: :unprocessable_entity
        
      end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy

      redirect_to payments_url, notice: "Payment was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_params
      params.require(:payment).permit(:name, :amount, :user_id, :category_id)
    end
end
