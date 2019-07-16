class ArticlesController < ApplicationController
  def index
    # byebug
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    # byebug
    # render plain: params[:article].inspect
    if @article.save
      redirect_to  @article
      # redirect_to @article
    else
      render 'new'
    end
  end
  def edit
    @article = Article.find(params[:id])
  end
  def show
    @article = Article.find(params[:id])
    # byebug
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # redirect_to @article
    render 'show'
  end
  def delete
    @article = Articell.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  def channel
    @article = Article.all
    byebug
  end
  def old
    puts "#{params[:id]}"
    @article = Article.find(params[:id])
    redirect_to @article
  end
    def gold
    @article = Article.find(params[:article_id])
  end

private
  def article_params
    params.require(:article).permit(:title,:text)
  end
end
