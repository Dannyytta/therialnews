class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show_comment
   @news = News.find(params[:id])
   @comments = @news.comments
  end

  def new_comment
    @comment = Comment.new
  end

  def show
    show_comment
    new_comment
  end
end
