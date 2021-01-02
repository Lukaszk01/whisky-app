class CommentsController < ApplicationController
    def create
        @whisky = Whisky.find(params[:whisky_id])
        @comment = @whisky.comments.create(comment_params)
        redirect_to whisky_path(@whisky)
      end
    def destroy
      @whisky = Whisky.find(params[:whisky_id])
      @comment = @whisky.comments.find(params[:id])
      @comment.destroy
      redirect_to whisky_path(@whisky)
    end  
    
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
