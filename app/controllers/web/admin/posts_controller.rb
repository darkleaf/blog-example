class Web::Admin::PostsController < Web::Admin::ApplicationController
  def index
    @posts = Post.by_created_at
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create post_params
    respond_with :admin, @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find params[:id]
    @post.update_attributes post_params
    respond_with :admin, @post
  end

  def destroy
    post = Post.destroy params[:id]
    respond_with :admin, post
  end

private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
