class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end

  def create
    article = Article.create(
        title: params([:title]),
        author_id: params([:author_id]),
        magazine_id: params([:magazine_id])
    )
    redirect_to 'http://localhost:3001/articles.html'
  end
end
