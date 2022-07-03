# frozen_string_literal: true

require 'application_system_test_case'

module Sync
  class WorkordersTest < ApplicationSystemTestCase
    setup do
      @workorder = sync_workorders(:one)
    end

    test 'visiting the index' do
      visit workorders_url
      assert_selector 'h1', text: 'Workorders'
    end

    test 'should create workorder' do
      visit workorders_url
      click_on 'New workorder'

      fill_in 'Archived', with: @workorder.Archived
      fill_in 'Creationdate', with: @workorder.CreationDate
      fill_in 'Customercity', with: @workorder.CustomerCity
      fill_in 'Customercityinvoice', with: @workorder.CustomerCityInvoice
      fill_in 'Customercontactperson', with: @workorder.CustomerContactPerson
      fill_in 'Customercontactpersoninvoice', with: @workorder.CustomerContactPersonInvoice
      fill_in 'Customerdebtornr', with: @workorder.CustomerDebtorNr
      fill_in 'Customerdebtornrinvoice', with: @workorder.CustomerDebtorNrInvoice
      fill_in 'Customeremail', with: @workorder.CustomerEmail
      fill_in 'Customeremailinvoice', with: @workorder.CustomerEmailInvoice
      fill_in 'Customername', with: @workorder.CustomerName
      fill_in 'Customernameinvoice', with: @workorder.CustomerNameInvoice
      fill_in 'Customerphone', with: @workorder.CustomerPhone
      fill_in 'Customerphoneinvoice', with: @workorder.CustomerPhoneInvoice
      fill_in 'Customerremark', with: @workorder.CustomerRemark
      fill_in 'Customerremarkinvoice', with: @workorder.CustomerRemarkInvoice
      fill_in 'Customerstreet', with: @workorder.CustomerStreet
      fill_in 'Customerstreetinvoice', with: @workorder.CustomerStreetInvoice
      fill_in 'Customerstreetnoinvoice', with: @workorder.CustomerStreetNoInvoice
      fill_in 'Customerzip', with: @workorder.CustomerZIP
      fill_in 'Customerzipinvoice', with: @workorder.CustomerZIPInvoice
      fill_in 'Documents', with: @workorder.Documents
      fill_in 'Employeenr', with: @workorder.EmployeeNr
      fill_in 'Employees', with: @workorder.Employees
      fill_in 'Externprojectnr', with: @workorder.ExternProjectNr
      fill_in 'Forms', with: @workorder.Forms
      fill_in 'Materials', with: @workorder.Materials
      fill_in 'Ordernr', with: @workorder.OrderNr
      fill_in 'Paymentmethod', with: @workorder.PaymentMethod
      fill_in 'Pdfurl', with: @workorder.PdfUrl
      fill_in 'Photos', with: @workorder.Photos
      fill_in 'Projectnr', with: @workorder.ProjectNr
      fill_in 'Signature', with: @workorder.Signature
      fill_in 'Signatureurl', with: @workorder.SignatureUrl
      fill_in 'Status', with: @workorder.Status
      fill_in 'Typeofwork', with: @workorder.TypeOfWork
      fill_in 'Wordurl', with: @workorder.WordUrl
      fill_in 'Workdate', with: @workorder.WorkDate
      fill_in 'Workdescription', with: @workorder.WorkDescription
      fill_in 'Workenddate', with: @workorder.WorkEndDate
      fill_in 'Workendtime', with: @workorder.WorkEndTime
      fill_in 'Workfinished', with: @workorder.WorkFinished
      fill_in 'Workinstruction', with: @workorder.WorkInstruction
      fill_in 'Workobjects', with: @workorder.WorkObjects
      fill_in 'Worktime', with: @workorder.WorkTime
      fill_in 'Workorderno', with: @workorder.WorkorderNo
      fill_in 'Workperiods', with: @workorder.Workperiods
      fill_in 'Worksheetcode', with: @workorder.WorksheetCode
      fill_in 'External', with: @workorder.external_id
      click_on 'Create Workorder'

      assert_text 'Workorder was successfully created'
      click_on 'Back'
    end

    test 'should update Workorder' do
      visit workorder_url(@workorder)
      click_on 'Edit this workorder', match: :first

      fill_in 'Archived', with: @workorder.Archived
      fill_in 'Creationdate', with: @workorder.CreationDate
      fill_in 'Customercity', with: @workorder.CustomerCity
      fill_in 'Customercityinvoice', with: @workorder.CustomerCityInvoice
      fill_in 'Customercontactperson', with: @workorder.CustomerContactPerson
      fill_in 'Customercontactpersoninvoice', with: @workorder.CustomerContactPersonInvoice
      fill_in 'Customerdebtornr', with: @workorder.CustomerDebtorNr
      fill_in 'Customerdebtornrinvoice', with: @workorder.CustomerDebtorNrInvoice
      fill_in 'Customeremail', with: @workorder.CustomerEmail
      fill_in 'Customeremailinvoice', with: @workorder.CustomerEmailInvoice
      fill_in 'Customername', with: @workorder.CustomerName
      fill_in 'Customernameinvoice', with: @workorder.CustomerNameInvoice
      fill_in 'Customerphone', with: @workorder.CustomerPhone
      fill_in 'Customerphoneinvoice', with: @workorder.CustomerPhoneInvoice
      fill_in 'Customerremark', with: @workorder.CustomerRemark
      fill_in 'Customerremarkinvoice', with: @workorder.CustomerRemarkInvoice
      fill_in 'Customerstreet', with: @workorder.CustomerStreet
      fill_in 'Customerstreetinvoice', with: @workorder.CustomerStreetInvoice
      fill_in 'Customerstreetnoinvoice', with: @workorder.CustomerStreetNoInvoice
      fill_in 'Customerzip', with: @workorder.CustomerZIP
      fill_in 'Customerzipinvoice', with: @workorder.CustomerZIPInvoice
      fill_in 'Documents', with: @workorder.Documents
      fill_in 'Employeenr', with: @workorder.EmployeeNr
      fill_in 'Employees', with: @workorder.Employees
      fill_in 'Externprojectnr', with: @workorder.ExternProjectNr
      fill_in 'Forms', with: @workorder.Forms
      fill_in 'Materials', with: @workorder.Materials
      fill_in 'Ordernr', with: @workorder.OrderNr
      fill_in 'Paymentmethod', with: @workorder.PaymentMethod
      fill_in 'Pdfurl', with: @workorder.PdfUrl
      fill_in 'Photos', with: @workorder.Photos
      fill_in 'Projectnr', with: @workorder.ProjectNr
      fill_in 'Signature', with: @workorder.Signature
      fill_in 'Signatureurl', with: @workorder.SignatureUrl
      fill_in 'Status', with: @workorder.Status
      fill_in 'Typeofwork', with: @workorder.TypeOfWork
      fill_in 'Wordurl', with: @workorder.WordUrl
      fill_in 'Workdate', with: @workorder.WorkDate
      fill_in 'Workdescription', with: @workorder.WorkDescription
      fill_in 'Workenddate', with: @workorder.WorkEndDate
      fill_in 'Workendtime', with: @workorder.WorkEndTime
      fill_in 'Workfinished', with: @workorder.WorkFinished
      fill_in 'Workinstruction', with: @workorder.WorkInstruction
      fill_in 'Workobjects', with: @workorder.WorkObjects
      fill_in 'Worktime', with: @workorder.WorkTime
      fill_in 'Workorderno', with: @workorder.WorkorderNo
      fill_in 'Workperiods', with: @workorder.Workperiods
      fill_in 'Worksheetcode', with: @workorder.WorksheetCode
      fill_in 'External', with: @workorder.external_id
      click_on 'Update Workorder'

      assert_text 'Workorder was successfully updated'
      click_on 'Back'
    end

    test 'should destroy Workorder' do
      visit workorder_url(@workorder)
      click_on 'Destroy this workorder', match: :first

      assert_text 'Workorder was successfully destroyed'
    end
  end
end
