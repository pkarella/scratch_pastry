class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :home]
  def index
    @products = Product.all
    @current_user = current_user
  end


  def show
    @products = Product.all

    @product = Product.find(params[:id])
    render :show
  end

  def new
    @current_user = current_user
    @product = @current_user.products.new
    render :new
  end

  def create
    @current_user = current_user
    @product = @current_user.products.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      render :new
    end
  end

    def edit
      @product = Product.find(params[:id])
      render :edit
    end

    def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

private
def product_params
    params.require(:product).permit(:name, :cost, :user_id)
  end
end
