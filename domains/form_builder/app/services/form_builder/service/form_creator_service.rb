# frozen_string_literal: true

module FormBuilder
  module Service
    # Saga to create forms
    class FormCreatorService < Base
      def new_form
        FormBuilder::Action::Form::New(FormBuilder::Form).call
      end

      def create_form(attrs)
        FormBuilder::Action::Form::Create.new(FormBuilder::Form, attrs)
          .call({success: success, failure: failure}, attrs)
      end
    end
  end
end
