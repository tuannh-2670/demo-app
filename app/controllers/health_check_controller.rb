class HealthCheckController < ApplicationController
  def index
    render json: {data: "health_cheack"}, status: 200
  end
end
