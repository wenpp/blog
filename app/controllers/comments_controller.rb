class CommentsController < ApplicationController

  # POST /comments
  # POST /comments.json
  def create
    #debugger
    @post = Post.find(params[:post_id])
    #@comment = @post.comments.new(params.require(:content).permit(:post_id))
    #params.require(:post).permit(:title, :content)
    @comment = @post.comments.new(comments_param)
    
    redirect_to @post if @comment.save
  end

   private 
      def comments_param
        params.require(:comment).permit(:post_id,:content)  
      end

end
