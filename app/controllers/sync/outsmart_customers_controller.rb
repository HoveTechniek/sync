# frozen_string_literal: true

module Sync
  class OutsmartCustomersController < ApplicationController
    def index
      @customers = Sync::Customer.all
    end

    def show
      @customer = Sync::Customer.new(params[:id])
    end

    def edit
      @customer = ::Customer.find(params[:id])
    end

    def synchronise
      @customer = Sync::Customer.new(params[:id])

      respond_to do |format|
        if @customer.update(sync_customer_params)
          format.html { redirect_to sync.outsmart_customer_path(id: @customer.id), success: 'Gesynchroniseerd!' }
        else
          format.html { render :show, status: :unprocessable_entity }
        end
      end
    end

    def update
      @customer = ::Customer.find(params[:id])

      respond_to do |format|
        if @customer.update(customer_params)
          format.html { redirect_to sync.outsmart_customer_path(@customer), success: 'Debiteurnummer bijgewerkt' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    def customer_params
      params.require(:customer).permit(:outsmart_debtor_number, :name)
    end

    def sync_customer_params
      params.require(:customer).permit(:name, :email, :telephone, :street, :number, :zipcode, :city)
    end
  end
end
