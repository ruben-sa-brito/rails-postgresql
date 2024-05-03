class CarrosController < ApplicationController
    
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
    end 

    def criar
        Carro.create(nome: params[:nome], modelo: params[:modelo], ano: params[:ano])
        flash[:success] = "Carro cadastrado com sucesso!"
        redirect_to carros_path
    end 

    def apagar
        carro = Carro.find(params[:id]) 
        carro.destroy
        
        flash[:success] = "Carro apagado com sucesso!"
        
        redirect_to carros_path 
    end 
end
