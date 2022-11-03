class GossipController < ApplicationController

  def index
    @gossip = Gossip.all
  end

  def edit
  end

  def new
  end

  def show
  end
end
