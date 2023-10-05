class UnbaController < ApplicationController
  def index
    render json: {data: "unba"}, status: 200
  end
end
