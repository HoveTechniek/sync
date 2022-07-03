# frozen_string_literal: true

require 'sync/version'
require 'sync/engine'

module Sync
  mattr_accessor :customer_model, :project_model, :employee_model, :activities_model

  # this function maps the vars from your app into your engine
  def self.setup
    yield self
  end

  # Your code goes here...
end
