# frozen_string_literal: true

require 'test_helper'

module Sync
  class WorkordersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @workorder = sync_workorders(:one)
    end

    test 'should get index' do
      get workorders_url
      assert_response :success
    end

    test 'should get new' do
      get new_workorder_url
      assert_response :success
    end

    test 'should create workorder' do
      assert_difference('Workorder.count') do
        post workorders_url,
             params: { workorder: { Archived: @workorder.Archived, CreationDate: @workorder.CreationDate,
                                    CustomerCity: @workorder.CustomerCity, CustomerCityInvoice: @workorder.CustomerCityInvoice, CustomerContactPerson: @workorder.CustomerContactPerson, CustomerContactPersonInvoice: @workorder.CustomerContactPersonInvoice, CustomerDebtorNr: @workorder.CustomerDebtorNr, CustomerDebtorNrInvoice: @workorder.CustomerDebtorNrInvoice, CustomerEmail: @workorder.CustomerEmail, CustomerEmailInvoice: @workorder.CustomerEmailInvoice, CustomerName: @workorder.CustomerName, CustomerNameInvoice: @workorder.CustomerNameInvoice, CustomerPhone: @workorder.CustomerPhone, CustomerPhoneInvoice: @workorder.CustomerPhoneInvoice, CustomerRemark: @workorder.CustomerRemark, CustomerRemarkInvoice: @workorder.CustomerRemarkInvoice, CustomerStreet: @workorder.CustomerStreet, CustomerStreetInvoice: @workorder.CustomerStreetInvoice, CustomerStreetNoInvoice: @workorder.CustomerStreetNoInvoice, CustomerZIP: @workorder.CustomerZIP, CustomerZIPInvoice: @workorder.CustomerZIPInvoice, Documents: @workorder.Documents, EmployeeNr: @workorder.EmployeeNr, Employees: @workorder.Employees, ExternProjectNr: @workorder.ExternProjectNr, Forms: @workorder.Forms, Materials: @workorder.Materials, OrderNr: @workorder.OrderNr, PaymentMethod: @workorder.PaymentMethod, PdfUrl: @workorder.PdfUrl, Photos: @workorder.Photos, ProjectNr: @workorder.ProjectNr, Signature: @workorder.Signature, SignatureUrl: @workorder.SignatureUrl, Status: @workorder.Status, TypeOfWork: @workorder.TypeOfWork, WordUrl: @workorder.WordUrl, WorkDate: @workorder.WorkDate, WorkDescription: @workorder.WorkDescription, WorkEndDate: @workorder.WorkEndDate, WorkEndTime: @workorder.WorkEndTime, WorkFinished: @workorder.WorkFinished, WorkInstruction: @workorder.WorkInstruction, WorkObjects: @workorder.WorkObjects, WorkTime: @workorder.WorkTime, WorkorderNo: @workorder.WorkorderNo, Workperiods: @workorder.Workperiods, WorksheetCode: @workorder.WorksheetCode, external_id: @workorder.external_id } }
      end

      assert_redirected_to workorder_url(Workorder.last)
    end

    test 'should show workorder' do
      get workorder_url(@workorder)
      assert_response :success
    end

    test 'should get edit' do
      get edit_workorder_url(@workorder)
      assert_response :success
    end

    test 'should update workorder' do
      patch workorder_url(@workorder),
            params: { workorder: { Archived: @workorder.Archived, CreationDate: @workorder.CreationDate,
                                   CustomerCity: @workorder.CustomerCity, CustomerCityInvoice: @workorder.CustomerCityInvoice, CustomerContactPerson: @workorder.CustomerContactPerson, CustomerContactPersonInvoice: @workorder.CustomerContactPersonInvoice, CustomerDebtorNr: @workorder.CustomerDebtorNr, CustomerDebtorNrInvoice: @workorder.CustomerDebtorNrInvoice, CustomerEmail: @workorder.CustomerEmail, CustomerEmailInvoice: @workorder.CustomerEmailInvoice, CustomerName: @workorder.CustomerName, CustomerNameInvoice: @workorder.CustomerNameInvoice, CustomerPhone: @workorder.CustomerPhone, CustomerPhoneInvoice: @workorder.CustomerPhoneInvoice, CustomerRemark: @workorder.CustomerRemark, CustomerRemarkInvoice: @workorder.CustomerRemarkInvoice, CustomerStreet: @workorder.CustomerStreet, CustomerStreetInvoice: @workorder.CustomerStreetInvoice, CustomerStreetNoInvoice: @workorder.CustomerStreetNoInvoice, CustomerZIP: @workorder.CustomerZIP, CustomerZIPInvoice: @workorder.CustomerZIPInvoice, Documents: @workorder.Documents, EmployeeNr: @workorder.EmployeeNr, Employees: @workorder.Employees, ExternProjectNr: @workorder.ExternProjectNr, Forms: @workorder.Forms, Materials: @workorder.Materials, OrderNr: @workorder.OrderNr, PaymentMethod: @workorder.PaymentMethod, PdfUrl: @workorder.PdfUrl, Photos: @workorder.Photos, ProjectNr: @workorder.ProjectNr, Signature: @workorder.Signature, SignatureUrl: @workorder.SignatureUrl, Status: @workorder.Status, TypeOfWork: @workorder.TypeOfWork, WordUrl: @workorder.WordUrl, WorkDate: @workorder.WorkDate, WorkDescription: @workorder.WorkDescription, WorkEndDate: @workorder.WorkEndDate, WorkEndTime: @workorder.WorkEndTime, WorkFinished: @workorder.WorkFinished, WorkInstruction: @workorder.WorkInstruction, WorkObjects: @workorder.WorkObjects, WorkTime: @workorder.WorkTime, WorkorderNo: @workorder.WorkorderNo, Workperiods: @workorder.Workperiods, WorksheetCode: @workorder.WorksheetCode, external_id: @workorder.external_id } }
      assert_redirected_to workorder_url(@workorder)
    end

    test 'should destroy workorder' do
      assert_difference('Workorder.count', -1) do
        delete workorder_url(@workorder)
      end

      assert_redirected_to workorders_url
    end
  end
end
