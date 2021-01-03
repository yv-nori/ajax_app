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
  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item}
  end
end
