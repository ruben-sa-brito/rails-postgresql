class AdministradoresController < ApplicationController
  before_action :set_administrador, only: %i[ show edit update destroy ]
  layout 'logado'
  # GET /administradores or /administradores.json
  def index
    @administradores = Administrador.all
  end

  # GET /administradores/1 or /administradores/1.json
  def show
  end

  # GET /administradores/new
  def new
    @administrador = Administrador.new
  end

  # GET /administradores/1/edit
  def edit
  end

  # POST /administradores or /administradores.json
  def create
    @administrador = Administrador.new(administrador_params)

    respond_to do |format|
      if @administrador.save
        format.html { redirect_to administrador_url(@administrador), notice: "Administrador was successfully created." }
        format.json { render :show, status: :created, location: @administrador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administradores/1 or /administradores/1.json
  def update
    respond_to do |format|
      if @administrador.update(administrador_params)
        format.html { redirect_to administrador_url(@administrador), notice: "Administrador was successfully updated." }
        format.json { render :show, status: :ok, location: @administrador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administradores/1 or /administradores/1.json
  def destroy
    @administrador.destroy!

    respond_to do |format|
      format.html { redirect_to administradores_url, notice: "Administrador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrador
      @administrador = Administrador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def administrador_params
      params.require(:administrador).permit(:nome, :email, :senha)
    end
end
