# frozen_string_literal: true

module FormBuilder
  module Service
    # Base class for Service objects
    class Base
      def success(entity)
        entity
      end

      def failure(error)
        throw error
      end
    end
  end
end