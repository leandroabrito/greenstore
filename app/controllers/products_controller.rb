class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # Read
  def index
    if params[:category].present?
      @products = policy_scope(Product).where(category: params[:category]).order(created_at: :desc)
    else
      @products = policy_scope(Product).order(created_at: :desc)
    end
  end

  def show
    @product.user = current_user
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end


  # Create
	def new
   	@product = Product.new
    authorize @product
  end

  def create
  	@product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product), notice: 'Product created!'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


	private

	def product_params
		params.require(:product).permit(:name, :description, :price, :quantity, :category, :photo)
	end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end




