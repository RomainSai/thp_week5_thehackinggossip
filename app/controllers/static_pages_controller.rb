class StaticPagesController < ApplicationController
  def home
  end

  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def show
    @gossip = Gossip.find(params[:id])
  end


end
