class CommentsController < ApplicationController


  def new
    # On instancie un nouveau comment
    @comment = Comment.new
  end

  def create
  # On passe les params du formulaire pour creer un nouveau comment
  @comment = Comment.new(anonymous_commentor: comment_params[:anonymous_commentor],content: comment_params[:content])

  #finding the appropriate Gossip

  @gossip = Gossip.find(params[:gossip_id])

  @comment.user_id = 1

  @gossip.comments << @comment

  if @gossip.save && @comment.save

    #@comment = Gossip.comments.create(
    #  content: params[:comment][:content],
    #   anonymous_gossiper: params[:comment][:anonymous_commentor]
    #   content: params[:comment][:gossip_id]
     #)
    # On renvoie vers la page du gossip
    redirect_to '/'''
  end
end

private

def comment_params
  params.require(:comment).permit(:anonymous_commentor, :content, :gossip_id)
end

end
