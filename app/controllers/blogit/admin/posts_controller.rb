module Blogit
  module Admin
    # Using explicit ::Blogit::ApplicationController fixes NoMethodError 'blogit_authenticate' in
    # the main_app
    class PostsController < ::Blogit::Admin::ApplicationController

      # If a layout is specified, use that. Otherwise, fall back to the default
      layout Blogit.configuration.layout if Blogit.configuration.layout
      
      helper Blogit::PostsHelper

      def index
        @posts ||= Post.for_admin_index(params[Kaminari.config.param_name])
      end

      def show
        @post = Post.find(params[:id])
      end

      def new
        @post = current_blogger.blog_posts.new(post_paramters)
      end

      def edit
        @post = current_blogger.blog_posts.find(params[:id])
      end

      def create
        @post = current_blogger.blog_posts.new(post_paramters)
        if @post.save
          redirect_to @post, notice: t(:blog_post_was_successfully_created, scope: 'blogit.posts')
        else
          render action: "new"
        end
      end

      def update
        @post = current_blogger.blog_posts.find(params[:id])
        if @post.update_attributes(post_paramters)
          redirect_to @post, notice: t(:blog_post_was_successfully_updated, 
          scope: 'blogit.posts')
        else
          render action: "edit"
        end
      end

      def destroy
        @post = current_blogger.blog_posts.find(params[:id])
        @post.destroy
        redirect_to posts_url, notice: t(:blog_post_was_successfully_destroyed, scope: 'blogit.posts')
      end

      def post_paramters
        if params[:post]
          params.require(:post).permit(:title, :body, :tag_list, :state)
        else
          {}
        end
      end

      private



    end

  end
end