class ArticlesController < ApplicationController
  before_action :set_article, except: [:index]

  def index
    articles = Article.recent
    render json: articles
  end

  def show

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end