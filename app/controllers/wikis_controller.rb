class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(params[:wiki])
    @wiki.save

    redirect_to @wiki
    # redirect_to wiki_path(@wiki)
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def update
    @wiki = Wiki.find(params[:id])
    @wiki.update_attributes(params[:wiki])

    redirect_to @wiki
    # redirect_to wiki_path(@wiki)
  end

  def destroy
    @wiki = Wiki.find(params[:id])
    @wiki.destroy

    redirect_to :wikis
    # redirect_to wikis_path
  end
end
