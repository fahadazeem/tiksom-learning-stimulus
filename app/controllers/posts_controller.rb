# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path(@post), notice: 'Post created successfully'
    else
      render partial: 'form', alert: @post.errors.full_messages.join(' ')
    end
  end

  private

  def set_post
    @post = Post.find_by_id(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :description)
  end
end
