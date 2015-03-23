class Admin::StoreProductsController < Admin::BaseController
	def index
  	@store_products = StoreProduct.all
  end

  def new
  	@store_product = StoreProduct.new
  end

  def create
  	@store_product = StoreProduct.new(store_product_params)
  	if @store_product.save
  		redirect_to admin_store_products_path, :notice => "Store product created."
  	else
  		render :new, :notice => "Could not be created."
  	end
  end

  def edit
  	@store_product = StoreProduct.find(params[:id])
  end

  def update
  	@store_product = StoreProduct.find(params[:id])
    if @store_product.save
      redirect_to edit_admin_store_products_path, :notice => "Updated store product."
    else
      render :edit, :notice => "Could not be updated."
    end
  end

  def destroy
  	StoreProduct.find(params[:id]).destroy
  	redirect_to admin_store_products_path, :notice => "Store product deleted."
  end
end