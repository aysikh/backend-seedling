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
        # byebug
        user = User.find(params[:user_id])
        @blogpost = BlogPost.create(
            # blog_post_params
            title: params[:title], 
            content: params[:content],
            user: user
        )
        if @blogpost.save
            render json: {
                blog_post: @blogpost, 
                errors: false
            }
        else
            render json: {
                errors: true,
                info: ["post cannot be submitted"]
            }
        end
    end

    def edit
        
    end

    def update
        # user = User.find(params[:id])
        @blogpost = BlogPost.find(params[:id])
        if @blogpost 
            @blogpost.update(
                title: params[:title], 
                content: params[:content],
            )
            render json: {
                blog_post: @blogpost, 
                errors: false
            }
        else
            render json: {
                errors: true,
                info: ["post cannot be updated"]
            }
        end
    end

    def destroy
        blogposts = BlogPost.all
        @blogpost = BlogPost.find(params[:id])
        if @blogpost.destroy
            render json: {
                blogposts: blogposts, 
                errors: "Post has been deleted", 
                success: true
            }
        else
            render json: {
                success: false, 
                errors: false,
                info: ["cannot delete post"]
            }
        end
    end

private

    def find_blog_posts
        @blogpost = BlogPost.find(parmas[:id])
    end

    def blog_post_params
        params.require(:blog_post).permit(:title, :content, :user_id)
    end


end
