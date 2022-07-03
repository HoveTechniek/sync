# frozen_string_literal: true

class AddOutsmartLinksToModels < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :outsmart_employee_number, :string
    add_column :projects, :outsmart_project_code, :string
    add_column :tasks, :outsmart_project_activity_code, :string
    add_column :customers, :outsmart_debtor_number, :string
  end
end
