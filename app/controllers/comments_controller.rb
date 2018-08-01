class CommentsController < ApplicationController


  def new
    # On instancie un nouveau comment
    @comment = @gossip.comments.new
  end

  def create
  # On passe les params du formulaire pour creer un nouveau comment
  comment = @gossip.comments.create(comment_params)
  #@comment = Gossip.comments.create(
  #  content: params[:comment][:content],
  #   anonymous_gossiper: params[:comment][:anonymous_commentor]
  #   content: params[:comment][:gossip_id]
   #)
  # On renvoie vers la page du gossip
  redirect_to '/'''
end

private

def comment_params
  params.require(:comment).permit(:anonymous_commentor, :content, :gossip_id)
end

end
