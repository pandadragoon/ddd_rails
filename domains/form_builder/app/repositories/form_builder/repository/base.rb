# frozen_string_literal: true

module FormBuilder
  module Repository
    # Base class for repos
    class Base
      attr_reader model

      def initialize(model)
        @model = model
      end

      def all
        @model.all
      end
    
      def find(id)
        @model.find(id)
      end
    
      def new_entity(attrs = nil)
        @model.new(attrs)
      end
    
      def save(entity)
        entity.save
      end
    
      def delete(entity)
        entity.destroy
      end
    end
  end
end
