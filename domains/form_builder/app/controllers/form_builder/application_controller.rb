module FormBuilder
  class ApplicationController < ActionController::API
    # protect_from_forgery with: :exception
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # rescue_from NameError, with: :render_name_error 

    # def render_unprocessable_entity_response(exception)
    #   render json: {
    #     message: 'Validation Failed',
    #     errors: Serializers::ValidationErrorsSerializer.new(exception.record).serialize
    #   }, status: :unprocessable_entity
    # end
  
    def render_not_found_response(exception)
      render json: { error: exception.message }, status: :not_found
    end
  end
end
