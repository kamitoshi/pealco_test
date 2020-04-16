class PostsController < ApplicationController
  def index
    @posts = Post.all
    @alc_categories = AlcCategory.all
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.new(post_params)
    if post.save
      flash[:success] = "投稿しました"
      redirect_to posts_path
    else
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      flash[:success] = "投稿を編集しました"
      redirect_to post_url(post)
    else
      flash.now[:danger] = "投稿できませんでした"
      render "edit"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :menu_name, :content, :image, :user_id, :alc_category_id, :menu_category_id)
  end

end
