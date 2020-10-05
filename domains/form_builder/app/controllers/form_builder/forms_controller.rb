# frozen_string_literal: true

module FormBuilder
  class FormsController < ApplicationController
    include FormBuilder::Service

    def index
      render json: FormGetterService.new.get_all_forms
    end

    def new
      render json: FormCreatorService.new.new_form
    end

    def create(form)
      render json: FormCreatorService.new.create_form(form)
    end
  end
end
