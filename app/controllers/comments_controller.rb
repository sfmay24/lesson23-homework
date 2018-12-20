class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
  end

  def create
    @comment = Comment.new
    @comment.user_id = current_user.id
    @comment.topic_id = params[:topic_id]
    @comment.description = params[:description]

    if @comment.save
      redirect_to comments_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
end
