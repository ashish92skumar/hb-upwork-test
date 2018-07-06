class MainController < ApplicationController

  def gadgets
    render json: {status: 201}
  end

  private
    def permitted_params
      params.permit(:email, :name, :upwork_name, :message)
    end
end
