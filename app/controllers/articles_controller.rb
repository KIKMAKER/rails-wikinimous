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
    @article = Article.new(articles_params)
    @article.save
    redirect_to articles_path, status: :see_other
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if params[:completed] == "true"
      @article.completed = true
    end
    @article.update(articles_params)
    redirect_to article_path, status: :see_other
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
