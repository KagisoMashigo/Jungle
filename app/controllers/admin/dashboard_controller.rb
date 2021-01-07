class Admin::DashboardController < ApplicationController
  # http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD'], except: [:index, :show]

  def show
    @product_count = Product.count
    @category_count = Category.count
    
  end
end
