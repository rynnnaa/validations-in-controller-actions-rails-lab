class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.valid?
      redirect_to author_path(@author)
    else
      render :edit
    end
  end


  def new
    @author = Author.new(author_params)
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
