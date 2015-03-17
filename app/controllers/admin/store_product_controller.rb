class Admin::StoreProductController < Admin::BaseController
	def index
  	@store_product = StoreProduct.all
  end

  # def new
  # 	@store_product = StoreProduct.new
  # end

  # def do_new
  # 	@store_product = StoreProduct.new(store_product_params)
  # 	if @store_product.save
  # 		  	redirect_to admin_store_product_path
  # 	else
  # 		render :do_new, :notice => "This already exists or this is invalid information"
  # 	end
  # end

  # def edit
  # 	@store_product = StoreProduct.find(params[:id])
  # end

  # def create
  # 	@store_product = StoreProduct.find(params[:id])

  # end

  # def destroy
  # 	StoreProduct.find(params[:id]).destroy
  # 	redirect_to admin_store_product_path
  # end

  # def store_product_params
  # end
end