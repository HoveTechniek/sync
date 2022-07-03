# frozen_string_literal: true

class CreateSyncWorkorders < ActiveRecord::Migration[7.0]
  def change
    create_table :sync_workorders do |t|
      t.string :external_id
      t.string :WorkorderNo
      t.string :OrderNr
      t.date :WorkDate
      t.time :WorkTime
      t.date :WorkEndDate
      t.time :WorkEndTime
      t.string :JobNr
      t.string :Reference
      t.string :ProjectNr
      t.string :ExternProjectNr
      t.string :CustomerName
      t.string :CustomerDebtorNr
      t.string :CustomerStreet
      t.string :CustomerEmail
      t.string :CustomerZIP
      t.string :CustomerCity
      t.string :CustomerContactPerson
      t.string :CustomerPhone
      t.string :CustomerRemark
      t.string :CustomerNameInvoice
      t.string :CustomerDebtorNrInvoice
      t.string :CustomerStreetInvoice
      t.string :CustomerStreetNoInvoice
      t.string :CustomerEmailInvoice
      t.string :CustomerZIPInvoice
      t.string :CustomerCityInvoice
      t.string :CustomerContactPersonInvoice
      t.string :CustomerPhoneInvoice
      t.string :CustomerRemarkInvoice
      t.string :TypeOfWork
      t.string :WorkDescription
      t.string :WorkInstruction
      t.string :PaymentMethod
      t.string :CreationDate
      t.string :EmployeeNr
      t.string :Signature
      t.string :SignatureUrl
      t.string :PdfUrl
      t.string :WordUrl
      t.string :WorksheetCode
      t.string :Status
      t.string :WorkFinished
      t.string :Archived
      t.string :Photos, array: true, default: []
      t.string :Workperiods, array: true, default: []
      t.string :Materials, array: true, default: []
      t.string :Documents, array: true, default: []
      t.string :Forms, array: true, default: []
      t.string :Employees, array: true, default: []
      t.string :WorkObjects, array: true, default: []

      t.string :ExternalReference
      t.string :ProjectActivityNr
      t.string :CustomerStreetNo
      t.string :CustomerCountry
      t.string :CustomerLatitude
      t.string :CustomerLongitude
      t.string :CustomerCountryInvoice
      t.string :UDID
      t.string :status
      t.string :InternalWorkDescription
      t.string :WorkDeadline
      t.string :WorkDuration
      t.string :WorkStatus
      t.string :PickupPlanning
      t.string :WebPlanning
      t.string :CpnCode
      t.string :AdrCode
      t.string :CpnCodeInvoice
      t.string :ShortWorkDescription
      t.string :Comment
      t.string :ErrorCode
      t.string :ErrorMessage
      t.string :SolutionCode
      t.string :SolutionMessage
      t.string :MinimumHours
      t.string :RoundingAmount
      t.string :PriorityCode
      t.string :PriorityMessage
      t.string :SignatureContactperson
      t.string :PgpCode
      t.string :Accountmanager
      t.string :ContractNumber
      t.string :SlaCode
      t.string :MutationDate
      t.string :StatusChanges
      t.string :FreeFields

      t.timestamps
    end
  end
end
