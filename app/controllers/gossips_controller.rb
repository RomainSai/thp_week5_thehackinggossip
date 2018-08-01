class GossipsController < ApplicationController

  def index
    @gossip = Gossip.all
    puts 'j affiche depuis new'
  end

  def new
    @gossip = Gossip.new
    puts 'j affiche depuis new'
    puts params.inspect

  end

  def create
    gossip = Gossip.create(gossip_params)

    #@gossip = Gossip.create(
    #  title: params[:gossip][:title],
    #   content: params[:gossip][:content],
    #   anonymous_gossiper: params[:gossip][:anonymous_gossiper])
    puts 'j affiche depuis new'
    #redirect_to action: 'show', id: @gossip.title
    redirect_to gossip_path(gossip.id)
  end


  def show
    @gossip = Gossip.find(params[:id])
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
  end

end
