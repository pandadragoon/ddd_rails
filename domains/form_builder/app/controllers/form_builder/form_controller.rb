# frozen_string_literal: true

module FormBuilder
  class FormController
    include FormBuilder::Service

    def new
      render json: FormCreatorService.new.new_form
    end

    def create(form)
      render json: FormCreatorService.new.create_form(form)
    end
  end
end