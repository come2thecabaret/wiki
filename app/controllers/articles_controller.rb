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
  end
end
