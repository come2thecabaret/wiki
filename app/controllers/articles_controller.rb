class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.body = params[:article][:body]
    @article.private = params[:article][:private]

    if @article.save
      flash[:notice] = "Article was saved successfully."
      redirect_to @article
    else
      flash.now[:alert] = "There was an error saving the article. Please try again."
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.title = params[:article][:title]
    @article.body = params[:article][:body]
    @article.private = params[:article][:private]

    if @article.save
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      flash.now[:alert] = "There was an error saving the article. Please try again."
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])

    if @article.destroy
      flash[:notice] = "\"#{@article.title}\" was deleted successfully."
      redirect_to articles_path
    else
      flash.now[:alert] = "There was an error deleting the article."
      render :show
    end
end
end
