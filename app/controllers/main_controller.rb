class MainController < ApplicationController

  def gadgets
    response = Gadget.get_gadget(permitted_params)
    render json: response
  end

  private
    def permitted_params
      params.permit(:email, :name, :upwork_name, :message)
    end
end
