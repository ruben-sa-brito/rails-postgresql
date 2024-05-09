class FornecedorTiposController < ApplicationController
  before_action :set_fornecedor_tipo, only: %i[ show edit update destroy ]

  # GET /fornecedor_tipos or /fornecedor_tipos.json
  def index
    @fornecedor_tipos = FornecedorTipo.all
  end

  # GET /fornecedor_tipos/1 or /fornecedor_tipos/1.json
  def show
  end

  # GET /fornecedor_tipos/new
  def new
    @fornecedor_tipo = FornecedorTipo.new
  end

  # GET /fornecedor_tipos/1/edit
  def edit
  end

  # POST /fornecedor_tipos or /fornecedor_tipos.json
  def create
    @fornecedor_tipo = FornecedorTipo.new(fornecedor_tipo_params)

    respond_to do |format|
      if @fornecedor_tipo.save
        format.html { redirect_to fornecedor_tipo_url(@fornecedor_tipo), notice: "Fornecedor tipo was successfully created." }
        format.json { render :show, status: :created, location: @fornecedor_tipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fornecedor_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedor_tipos/1 or /fornecedor_tipos/1.json
  def update
    respond_to do |format|
      if @fornecedor_tipo.update(fornecedor_tipo_params)
        format.html { redirect_to fornecedor_tipo_url(@fornecedor_tipo), notice: "Fornecedor tipo was successfully updated." }
        format.json { render :show, status: :ok, location: @fornecedor_tipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fornecedor_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedor_tipos/1 or /fornecedor_tipos/1.json
  def destroy
    @fornecedor_tipo.destroy!

    respond_to do |format|
      format.html { redirect_to fornecedor_tipos_url, notice: "Fornecedor tipo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor_tipo
      @fornecedor_tipo = FornecedorTipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedor_tipo_params
      params.require(:fornecedor_tipo).permit(:nome)
    end
end
