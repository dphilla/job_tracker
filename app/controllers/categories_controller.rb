class CategoriesController < ActionController::Base

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def category_params

  end


end
