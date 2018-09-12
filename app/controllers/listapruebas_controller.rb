class ListapruebasController < ApplicationController
  before_action :set_listaprueba, only: [:show, :edit, :update, :destroy]

  # GET /listapruebas
  # GET /listapruebas.json
  def index
    @listapruebas = Listaprueba.all
  end

  # GET /listapruebas/1
  # GET /listapruebas/1.json
  def show
  end

  # GET /listapruebas/new
  def new
    @listaprueba = Listaprueba.new
  end

  # GET /listapruebas/1/edit
  def edit
  end

  # POST /listapruebas
  # POST /listapruebas.json
  def create
    @listaprueba = Listaprueba.new(listaprueba_params)

    respond_to do |format|
      if @listaprueba.save
        format.html { redirect_to @listaprueba, notice: 'Listaprueba was successfully created.' }
        format.json { render :show, status: :created, location: @listaprueba }
      else
        format.html { render :new }
        format.json { render json: @listaprueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listapruebas/1
  # PATCH/PUT /listapruebas/1.json
  def update
    respond_to do |format|
      if @listaprueba.update(listaprueba_params)
        format.html { redirect_to @listaprueba, notice: 'Listaprueba was successfully updated.' }
        format.json { render :show, status: :ok, location: @listaprueba }
      else
        format.html { render :edit }
        format.json { render json: @listaprueba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listapruebas/1
  # DELETE /listapruebas/1.json
  def destroy
    @listaprueba.destroy
    respond_to do |format|
      format.html { redirect_to listapruebas_url, notice: 'Listaprueba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listaprueba
      @listaprueba = Listaprueba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listaprueba_params
      params.require(:listaprueba).permit(:nombre, :desde, :hasta, :responsable, :estado)
    end
end
