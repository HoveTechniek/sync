# frozen_string_literal: true

module Sync
  class OutsmartProject
    include ::ActiveModel::Model

    attr_accessor :name, :debtor_number, :code_ext, :code, :adr_code, :cpn_code,
                  :debtor_number_invoice, :status, :description, :progress, :date_start, :date_end, :active

    def self.attributes
      {
        title: :name
      }
    end

    def self.create(attributes)
      Outsmart::Client.new.projects.create(attributes)
    end
  end
end
