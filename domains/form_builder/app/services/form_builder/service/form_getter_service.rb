module FormBuilder
  module Service
    # Saga to create forms
    class FormGetterService < Base
      include FormBuilder::Action::Form
      include FormBuilder::Repository

      def get_all_forms
        AllFormAction
          .new(FormRepository, FormBuilder::Form)
          .call({ success: success, failure: failure})
      end
    end
  end 
end