class ChannelsController < ApplicationController

  def index

  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.save
    redirect_to '/'
    flash[:notice] = "#{@channel.name} Successfully Added"
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end
end
