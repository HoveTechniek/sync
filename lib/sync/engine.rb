# frozen_string_literal: true

module Sync
  class Engine < ::Rails::Engine
    initializer 'blorgh.assets.precompile' do |app|
      app.config.assets.precompile += %w[application.css]
    end

    isolate_namespace Sync
  end
end
