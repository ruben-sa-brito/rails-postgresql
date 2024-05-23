class ApplicationController < ActionController::Base
    before_action :valida_sessao

    def valida_sessao
        cookie_adm_logado = cookies[:cookie_adm_logado]
        if cookie_adm_logado.blank?
            return redirect_to "/login"
        end    
    end    
end
