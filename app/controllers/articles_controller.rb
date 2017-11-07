class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all.order(created_at: 'desc')
  end
  
  def show
    @article = Article.find(params[:id])
  end 
  
  def new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
    redirect_to articles_path
    else
      render 'new'
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
  
  
  
end
