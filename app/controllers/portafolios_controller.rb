class PortafoliosController < ApplicationController
  def index
    @portafolio_items = Portafolio.all
  end
end
