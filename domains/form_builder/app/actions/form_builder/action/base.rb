# frozen_string_literal: true

module FormBuilder
  module Action
    # base class for action inheritence
    class Base
      attr_reader :repository

      def initialize(repo, model)
        @repository = repo.new(model)
      end
    end
  end
end
