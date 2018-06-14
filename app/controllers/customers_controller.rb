class CustomersController < ApplicationController

  def show
    @customer = Customer.find(params["id"])

    render :show
  end
end
