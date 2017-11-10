class CustomersController < ApplicationController

  # layout "application"

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where("email_address is null OR email_address == ''")
  end
end
