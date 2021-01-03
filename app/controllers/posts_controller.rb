class PostsController < ApplicationController
  def index # indexアクションを定義しました
    @posts = Post.all.order(id: "DESC")
  end
  # 削除
  # def new
  # end
  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
