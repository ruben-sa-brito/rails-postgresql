class CarrosController < ApplicationController
    layout 'logado'
    
    def index
        @carros = Carro.all
    end  
    
    def show
        @carro = Carro.find(params[:id])
    end  

    def editar
        @carro = Carro.find(params[:id])
    end 

    def alterar
        carro = Carro.find(params[:id])
        carro.nome = params[:nome]
        carro.modelo = params[:modelo]
        carro.ano = params[:ano]
        carro.save
        flash[:success] = "Carro editado com sucesso!"
        redirect_to carros_path
    end

    def cadastrar
        @carro = Carro.new
    end 

    def criar
        @carro = Carro.new(nome: params[:nome], modelo: params[:modelo], ano: params[:ano])
        if @carro.save
            flash[:success] = "Carro cadastrado com sucesso!"
            return redirect_to carros_path 
        else   
            render :cadastrar, status: :unprocessable_entity  
        end
        
    end 

    def apagar
        carro = Carro.find(params[:id]) 
        carro.destroy
        
        flash[:success] = "Carro apagado com sucesso!"
        
        redirect_to carros_path 
    end 
end
