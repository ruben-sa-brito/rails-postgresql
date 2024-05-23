class ApplicationController < ActionController::Base
    before_action :valida_sessao

    def valida_sessao
        token = cookies[:cookie_adm_logado]
        if token.blank?
            return redirect_to "/login"
        end 
        begin
            decoded_token = JWT.decode(token, TOKEN_JWT, true, { algorithm: 'HS256' })
            payload = decoded_token[0]
            hash_adm = JSON.parse(payload)
            @adm = Administrador.find(hash_adm["id"])
        rescue
            flash[:error] = "Cookie inválido"
            return redirect_to "/login"
        end        
    end    
end
