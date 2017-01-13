class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    #Index shows all articles, so in the view we want to be able to refer to a variable articles, which represents a list of ALL articles in the database
  end

  def show
    @article = Article.find(params[:id])
    #Show gets one particular article. It queries the database (find) using a particular id, depending on which article was selected. Now in the view for the show action, we can reference the specific article
  end
end
