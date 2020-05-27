# frozen_string_literal: false

module Api
  module V1
    # ImportData controller
    class ImportDataController < ApplicationController
      def create
        # Add json response
        file = google_trasit_param[:file]
        response = ExtractStationData.new(file).call

        render json: response
      end

      private

      def google_trasit_param
        params.require(:google_trasit).permit(:file)
      end
    end
  end
end
