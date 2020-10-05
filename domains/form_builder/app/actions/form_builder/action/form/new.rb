# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Empty form object
      class New < Base
        def call
          repository.new_entity
        end
      end
    end
  end
end