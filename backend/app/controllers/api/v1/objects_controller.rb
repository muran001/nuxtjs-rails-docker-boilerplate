module Api
  module V1
    class ObjectsController < ApplicationController
      def index
        render json: { status: 'SUCCESS', message: 'loaded objects', data: objects }
      end

      def show
        index = params[:id].to_i - 1
        render json: { status: 'SUCCESS', message: 'loaded the object', data: objects[index] }
      end

      private

      def objects
        [
          {
            id: 1,
            title: 'object1',
            created_at: Time.current,
            updated_at: Time.current
          }, {
            id: 2,
            title: 'object2',
            created_at: Time.current,
            updated_at: Time.current
          }
        ]
      end
    end
  end
end
