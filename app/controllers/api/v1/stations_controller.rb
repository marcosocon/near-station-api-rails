# frozen_string_literal: false

module Api
  module V1
    # Stations controller
    class StationsController < ApplicationController
      def index
        stations = if station_params[:lat].present? && station_params[:long].present?
                     Station.closest(origin: [station_params[:lat], station_params[:long]]).limit(5)
                   else
                     Station.first(5)
                   end

        render json: stations
      end

      private

      def station_params
        params.require(:station).permit(:lat, :long)
      end
    end
  end
end
