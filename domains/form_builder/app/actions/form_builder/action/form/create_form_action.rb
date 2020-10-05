# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Create form
      class CreateFormAction < Base
        def call(callbacks, attrs = nil)
          form = repository.new_entity(attrs)
          repository.save(form) ? callbacks[:success].call(form) : callbacks[:failure].call(form)
        end
      end
    end
  end
end