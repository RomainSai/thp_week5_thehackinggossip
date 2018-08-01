class GossipsController < ApplicationController

  def index
    @gossip = Gossip.all
    puts 'j affiche depuis index'
  end

  def new
    puts "j'affiche depuis new"
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
    puts 'j affiche depuis create'
    #redirect_to action: 'show', id: @gossip.title
    redirect_to gossip_path(gossip.id)
  end


  def show
    puts "j'affiche depuis show"
    @gossip = Gossip.find(params[:id])
  end

  def edit
    puts "j'affiche depuis edit"
    @gossip = Gossip.find(params[:id])
  end

  def update
    gossip = Gossip.create(gossip_params)
    redirect_to gossip_path(gossip.id)
  end 

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
  end

end
