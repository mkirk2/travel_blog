class CommentsController < ApplicationController

before_action :authenticate_user! 

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    def create
        comment = Comment.new(comment_params)
        comment.destination_id = params[:destination_id]
        comment.user_id = current_user.id
        comment.save!
        redirect_to("/destinations/#{params[:destination_id]}")
    end

    private
    def comment_params
        params.require(:comment).permit(:user_id, :destination_id, :body)
    end
end