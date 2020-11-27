class BlogPostsController < ApplicationController
    before_action :find_blog_posts, only: [:show, :edit]

    def index
        @blogposts = BlogPost.all
        render json: @blogposts
    end

    def show
        @blogpost = BlogPost.find(params[:id])
        render json: @blogpost
    end

    def new
        @blogpost = BlogPost.new
        render json: @blogpost
    end

    def create
        @blogpost = BlogPost.new(
            title: params[:title], 
            content: params[:content]
        )
        if @blogpost.save
            render json: {
                blog_post: @blogpost, 
                errors: false
            }
        else
            render json: {
                errors: true,
                info: ["try again"]
            }
        end
    end

    def edit
    end

    def update
        @blogpost = BlogPost.find(params[:id])
        @blogpost.update(
            title: params[:title], 
            content: params[:content]
        )
    end

    def destroy
        @blogpost = BlogPost.find(params[:id])
        @blogpost.destroy

        redirect_to blog_post_path
    end

private

    def find_blog_posts
        @blogpost = BlogPost.find(parmas[:id])
    end

end
