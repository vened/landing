class PagesController < ApplicationController

  # before_action :set_order, only: [:index, :show, :job]
  skip_before_filter :verify_authenticity_token, :only => [:order]


  def index
    @posts = Post.all
    @order = Order.new
    
    @carousels = Carousel.all
  end

  def order
    @order = Order.new(order_params)
    if @order.save
      # render :json => @order
    else
      render :json => @order.errors
    end
  end


  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:name, :phone, :date)
  end


end
