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

  def edit
    @portafolio_item = Portafolio.find(params[:id])
  end

  def update
    @portafolio_item = Portafolio.find(params[:id])

    respond_to do |format|
      if @portafolio_item.update(params.require(:portafolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portafolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portafolio_item = Portafolio.find(params[:id])
  end

  def destroy
    @portafolio_item = Portafolio.find(params[:id])
    @portafolio_item.destroy
    respond_to do |format|
        format.html { redirect_to portafolio_url, notice: 'Post was removed'}
        format.json { head :no_content }
    end
  end
end
