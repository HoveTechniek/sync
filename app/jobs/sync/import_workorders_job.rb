# frozen_string_literal: true

module Sync
  class ImportWorkordersJob < ApplicationJob
    queue_as :default

    def perform(*_args)
      import_today
    end

    def import_today
      @workorders = Outsmart::Client.new.workorders.where_as_hash(status: 'Alle', archived: 0)
      @workorders.each do |w|
        w['external_id'] = w.delete 'id'

        workorder = Sync::Workorder.find_or_create_by(external_id: w[:external_id])
        workorder.update(w)
      end
    end
  end
end
