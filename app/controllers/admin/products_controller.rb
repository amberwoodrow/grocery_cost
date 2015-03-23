class Admin::ProductsController < Admin::BaseController
	def index
  	@products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)
    if @products.save
      redirect_to new_admin_product_path, :notice => "New product created."
    else
      render :new, :notice => "Could not be created."
    end
  end

  def edit
    @products = Product.find(params[:id])
  end

  def update
    @products = Product.find(params[:id])
    if @products.update_attributes(product_params)
      redirect_to edit_admin_product_path, :notice => "Product updated."
    else
      render :edit, :notice => "Could not be updated."
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to admin_products_path, :notice => "Product deleted."
  end
end