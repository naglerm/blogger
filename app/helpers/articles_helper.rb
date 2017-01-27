module ArticlesHelper
  #require and permit example
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
