class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.create(params[:title],params[:description])
    render :show
  end
  
  
end
