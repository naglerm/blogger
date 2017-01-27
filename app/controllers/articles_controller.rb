class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
    #Index shows all articles, so in the view we want to be able to refer to a variable articles, which represents a list of ALL articles in the database
  end

  def show
    @article = Article.find(params[:id])
    #Show gets one particular article. It queries the database (find) using a particular id, depending on which article was selected. Now in the view for the show action, we can reference the specific article
  end

  def new
    @article = Article.new
    #since the new action makes a form to create a new article, the instance variable here is just a new article in the database, whose fields will be populated from the form
  end

  def create
    #fail
    #fail - a keyword that is useful for examining the request parameters (what the controller looks for when create is called)

    @article = Article.new(article_params)
    #included in the articles_helper file
    @article.save
    redirect_to article_path(@article)

    #@article = Article.new(title: params[:article][:title], body: params[:article][:body]) or .new(params[:article])
    #first it creates a new article, at sets the title by accessing the params of the article, and using the title parameter. The article is then saved and we are redirected to it.
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path()
  end

  def edit
    @article = Article.find(params[:id])
    #use of form partials to prevent us from using almost identical views - don't repeat yourself
  end

  def update
    #called when an article is edited
    @article = Article.find(params[:id])
    @article.update(article_params)
    #uses the module articles_helper for permissions
    redirect_to article_path(@article)
  end
end
