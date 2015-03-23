class Admin::StoresController < Admin::BaseController
	def index
  	@stores = Store.all
  end
  
  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to new_admin_store_path, :notice => "New store created."
    else
      render :new, :notice => "Could not be created."
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(store_params)
      redirect_to edit_admin_store_path, :notice => "Store updated."
    else
      render :edit, :notice => "Could not be updated."
    end
  end

  def destroy
    Store.find(params[:id]).destroy
    redirect_to admin_store_index_path, :notice => "Store deleted."
  end
end