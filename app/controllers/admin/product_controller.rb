class Admin::ProductController < Admin::BaseController
	def index
  	@products = Product.all
  end

  def new
  end

  def do_new
  end

  def edit
  end

  def do_edit
  end

  def destroy
  end
end