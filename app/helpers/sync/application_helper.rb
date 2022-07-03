# frozen_string_literal: true

module Sync
  module ApplicationHelper
    def method_missing(method, *args, &)
      if (method.to_s.end_with?('_path') || method.to_s.end_with?('_url')) && main_app.respond_to?(method)
        main_app.send(method, *args)
      else
        super
      end
    end

    def fancy_boolean(bool)
      if bool
        raw('<i class="bi bi-hand-thumbs-up-fill" style="color:green;"></i>')
      else
        raw('<i class="bi bi-hand-thumbs-down-fill" style="color:red;"></i>')
      end
    end
  end
end
