class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: env[HTTP_AUTH_NAME], password: env[HTTP_AUTH_PASS], except: :no_auth 

  def no_auth
    render plain: "YOU CANT SEE ME NERD"
  end

  def show
  end
end
