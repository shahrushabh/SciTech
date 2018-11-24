class RepositoriesController < ApplicationController

  # To be repalce with the actual user!
  @page_title = "Welcome to SciTech!"

  def new
    @page_title = "New Repository"
    @repository = Repository.new
  end

  def create
    @repository = Repository.new(repositoy_params)
    @repository.save

    redirect_to repositories_path
  end

  def update
    @page_title = "Update Repository"
  end

  def edit
    @page_title = "Repository Details"
  end

  def destroy
  end

  def index
    @page_title = "Your innovations, Feel proud!"
    @repositories = Repository.all.collect {|repo| [repo.name, repo.id]}

  end

  def show
    @page_title = "Title of the Reository"
  end

  private 
    def repositoy_params
      params.require(:repository).permit(:name)
    end
end
