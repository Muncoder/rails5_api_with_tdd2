class ArticlesController < ApplicationController
  before_action :set_article, except: [:index]
  skip_before_action :authorize!, only: [ :index, :show ]

  def index
    articles = Article.recent.
      page(params[:page]).
      per(params[:per_page])
    render json: articles
  end

  def show

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end