# frozen_string_literal: true

module FormBuilder
  module Service
    # Saga to create forms
    class FormCreatorService < Base
      include FormBuilder::Action::Form
      include FormBuilder::Repository

      def new_form
        NewFormAction
          .new(FormRepository, FormBuilder::Form)
          .call
      end

      def create_form(attrs)
        CreateFormAction
          .new(FormRepository, FormBuilder::Form)
          .call({ success: success, failure: failure }, attrs)
      end
    end
  end
end
