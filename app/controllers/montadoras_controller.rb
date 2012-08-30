class MontadorasController < ApplicationController
  
  layout "adminpanel"

  def index
    @montadoras = Montadora.all
  end

  def show
    @montadora = Montadora.find(params[:id])
  end

  def new
    @montadora = Montadora.new
  end

  def edit
    @montadora = Montadora.find(params[:id])
  end

  def create
    @montadora = Montadora.new(params[:montadora])

    respond_to do |format|
      if @montadora.save
        format.html { redirect_to @montadora, notice: 'Montadora inserida com sucesso' }        
      else
        format.html { render action: "new" }        
      end
    end
  end

  def update
    @montadora = Montadora.find(params[:id])

    respond_to do |format|
      if @montadora.update_attributes(params[:montadora])
        format.html { redirect_to @montadora, notice: 'Montadora alterada com sucesso!' }        
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @montadora = Montadora.find(params[:id])
    @montadora.destroy

    respond_to do |format|
      format.html { redirect_to montadoras_url }
    end
  end
end
