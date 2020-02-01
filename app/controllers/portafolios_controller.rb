class PortafoliosController < ApplicationController
  def index
    # @portafolio_items = Portafolio.where(subtitle: "Angular")
    # @portafolio_items = Portafolio.angular
    @portafolio_items = Portafolio.all
    # @portafolio_items = Portafolio.ruby_on_rails_portafolio_items
  end

  def angular
    @angular_portafolio_items = Portafolio.angular
  end

  def new
    @portafolio_item = Portafolio.new
    3.times { @portafolio_item.technologies.build }
  end

  def create
    @portafolio_item = Portafolio.new(params.require(:portafolio).permit(:title, :subtitle, :body,
      technologies_attributes: [:name]))

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
        format.html { redirect_to portafolio_url, notice: 'Record was removed'}
        format.json { head :no_content }
    end
  end
end
