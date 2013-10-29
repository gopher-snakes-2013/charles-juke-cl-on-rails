class PostsController < ApplicationController
  def index
  end

  def create
    Post.create(:title => params[:post][:title], :body => params[:post][:body])
    redirect_to action: 'index'
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.update(params[:id].to_i, :title => params[:post][:title], :body => params[:post][:body])
    redirect_to action: 'index'
  end

  def new
  end
end
