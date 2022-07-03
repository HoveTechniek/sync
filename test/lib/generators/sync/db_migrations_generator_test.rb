# frozen_string_literal: true

require 'test_helper'
require 'generators/db_migrations/db_migrations_generator'

module Sync
  class DbMigrationsGeneratorTest < Rails::Generators::TestCase
    tests DbMigrationsGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
