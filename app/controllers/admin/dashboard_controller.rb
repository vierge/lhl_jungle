class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV[:HTTP_AUTH_NAME.to_s], password: ENV[:HTTP_AUTH_PASS.to_s], except: :no_auth 

  def no_auth
    render plain: "YOU CANT SEE ME NERD"
  end

  def show
    @statistics = { 
      categories_count: Category.count,
      product_count: Product.count
    }
  end
end
