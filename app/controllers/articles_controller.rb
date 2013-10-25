class ArticlesController < ApplicationController
  before_filter :load_wiki

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
    @article = Article.new(params[:article])
    @article.save

    redirect_to [@wiki, @article]
    # redirect_to wiki_article_path(@wiki, @article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    redirect_to [@wiki, @article]
    # redirect_to wiki_article_path(@wiki, @article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to [@wiki, :articles]
    # redirect_to wiki_articles_path(@wiki)
  end

  private

    def load_wiki
      @wiki = Wiki.find(params[:wiki_id])
    end
end
