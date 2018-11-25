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
    @repo_id = params[:id]
    if Repository.exists?(params[:id])
      @repository = Repository.find(@repo_id)
      @page_title = @repository.name
    end
    if Branch.exists?("master")
      @repository.branch = Branch.find(repository_id = @repo_id)
    else
      @repository.branch = Branch.new
    end
  end

  private 
    def repositoy_params
      params.require(:repository).permit(:name)
    end

    private 
    def branch_params
      params.require(:branch).permit(:name)
    end
end
