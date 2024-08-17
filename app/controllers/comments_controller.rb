class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to prototype_path(@comment.prototype) }
        format.js
      else
        format.html {
          @prototype = @comment.prototype
          @comments = @prototype.comments
          render "prototypes/show"
        }
        format.js { render :error }
      end
    end
  end

  private def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
