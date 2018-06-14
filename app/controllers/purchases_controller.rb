class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new

    render :new
  end

  def create
    # brew and a customer
    # binding.pry
    # Find or create customer
    # Get the brew
    @customer = Customer.find_or_create_by(name: purchase_params[:customer])
    @brew = Brew.find(purchase_params[:brew_id])
    @purchase = Purchase.new(brew_id: @brew.id, customer_id: @customer.id)

    if @purchase.valid?
      redirect_to '/purchases/#{purchase.id}'
    else
      render :new
    end

  end

  def show
    # Route => /purchases/:id
    # params[:id] => Gives back our id
    @purchase = Purchase.find(params[:id])

    # binding.pry
    # render purchase_path
    render :show
  end

  private
  def purchase_params
    params.require(:purchase).permit(:customer, :brew_id)
  end
end
