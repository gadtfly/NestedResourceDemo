class ArticlesController < ApplicationController
  before_filter :load_wiki

  def index
    @articles = @wiki.articles.all
  end

  def show
    @article = @wiki.articles.find(params[:id])
  end

  def new
    @article = @wiki.articles.new
  end

  def create
    @article = @wiki.articles.new(params[:article])
    @article.save

    redirect_to [@wiki, @article]
    # redirect_to wiki_article_path(@wiki, @article)
  end

  def edit
    @article = @wiki.articles.find(params[:id])
  end

  def update
    @article = @wiki.articles.find(params[:id])
    @article.update_attributes(params[:article])

    redirect_to [@wiki, @article]
    # redirect_to wiki_article_path(@wiki, @article)
  end

  def destroy
    @article = @wiki.articles.find(params[:id])
    @article.destroy

    redirect_to [@wiki, :articles]
    # redirect_to wiki_articles_path(@wiki)
  end

  private

    def load_wiki
      @wiki = Wiki.find(params[:wiki_id])
    end
end
