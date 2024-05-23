class LoginController < ApplicationController
    skip_before_action :valida_sessao
    layout 'logout'
    def index
    end

    def logar
        adm = Administrador.where(email: params[:email], senha: params[:senha]).first
        if adm.blank?
            flash[:error] = "Email ou senha incorretos!"
            return redirect_to "/login"
        end
        cookies[:cookie_adm_logado] = { value: {
            id: adm.id,
            nome: adm.nome,
            email: adm.email
        }, 
        http_only: true,
        expires: 1.hour.from_now
    }
        
        redirect_to "/"
    end

    def sair
        cookies.delete(:cookie_adm_logado)
        redirect_to "/"
    end
end