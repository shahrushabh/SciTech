class Repositories::BranchesController < ApplicationController

  # To be repalce with the actual user!
  @page_title = "View branches / Add a new branch"

  def new
    @page_title = "Create a new branch"
    @repository = Repository.new
    @branch = Branch.new
  end

  def create
    # @repository = Repository.new(repositoy_params)
    # @repository.save

    # redirect_to categories_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @page_title = "Features you have created! Lookin good!"
  end

  def show
    @page_title = "Title of the Repository/Branch"
  end

  # private 
  #   def repositoy_params
  #     params.require(:repository).permit(:name)
  #   end
end
