# frozen_string_literal: true

module Sync
  class WorkordersController < ApplicationController
    before_action :set_workorder, only: %i[show edit update destroy]

    # GET /workorders
    def index
      @workorders = Workorder.all
    end

    # GET /workorders/1
    def show; end

    # GET /workorders/new
    def new
      @workorder = Workorder.new
    end

    # GET /workorders/1/edit
    def edit; end

    # POST /workorders
    def create
      @workorder = Workorder.new(workorder_params)

      if @workorder.save
        redirect_to @workorder, notice: 'Workorder was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /workorders/1
    def update
      if @workorder.update(workorder_params)
        redirect_to @workorder, notice: 'Workorder was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /workorders/1
    def destroy
      @workorder.destroy
      redirect_to workorders_url, notice: 'Workorder was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_workorder
      @workorder = Workorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workorder_params
      params.require(:workorder).permit(:external_id, :WorkorderNo, :OrderNr, :WorkDate, :WorkTime, :WorkEndDate,
                                        :WorkEndTime, :ProjectNr, :ExternProjectNr, :CustomerName, :CustomerDebtorNr, :CustomerStreet, :CustomerEmail, :CustomerZIP, :CustomerCity, :CustomerContactPerson, :CustomerPhone, :CustomerRemark, :CustomerNameInvoice, :CustomerDebtorNrInvoice, :CustomerStreetInvoice, :CustomerStreetNoInvoice, :CustomerEmailInvoice, :CustomerZIPInvoice, :CustomerCityInvoice, :CustomerContactPersonInvoice, :CustomerPhoneInvoice, :CustomerRemarkInvoice, :TypeOfWork, :WorkDescription, :WorkInstruction, :PaymentMethod, :CreationDate, :EmployeeNr, :Signature, :SignatureUrl, :PdfUrl, :WordUrl, :WorksheetCode, :Status, :WorkFinished, :Archived, :Photos, :Workperiods, :Materials, :Documents, :Forms, :Employees, :WorkObjects)
    end
  end
end
