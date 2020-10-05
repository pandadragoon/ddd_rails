# frozen_string_literal: true

module FormBuilder
  class FormController
    def new
      render json: FormBuilder::Service::FormCreatorService.new.new_form
    end

    def create(form)
      render json: FormBuilder::Service::FormCreatorService.new.create_form(form)
    end
  end
end