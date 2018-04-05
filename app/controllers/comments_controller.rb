class CommentsController < ApplicationController

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    
    def create
        comment = Comment.new(comment_params)
        comment.destination_id = params[:destination_id]
        comment.save!
        redirect_to("/destinations/#{params[:destination_id]}")
    end

    private
    def comment_params
        params.require(:comment).permit(:user_name, :destination_id, :body)
    end
end