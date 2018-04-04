class CommentsController < ApplicationController

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end
    def create
        @comment = Comment.new(params[:comment])
    end
end