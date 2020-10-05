# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Create form
      class AllFormAction < Base
        def call(callbacks)
          repository.all ? callbacks[:success].call(form) : callbacks[:failure].call(form)
        end
      end
    end
  end
end