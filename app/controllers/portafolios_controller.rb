class PortafoliosController < ApplicationController
  def index
    @portafolio_items = Portafolio.all
  end

  def new
    @portafolio_item = Portafolio.new
  end

  def create
    @portafolio_item = Portafolio.new(params.require(:portafolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portafolio_item.save
        format.html { redirect_to portafolios_path, notice: 'Your portafolio is now live' }
      else
        format.hml { render :new }
      end
    end
  end
end
