module OmniAuth
  module Wanliu
    module AjaxHelpers

      def ajax_set_response_headers    
        options = auth_params
        response.headers["sso_auth_url"] = authorize_url
        response.headers["sso_auth_params"] = options.to_json
        foreg_ajax_auth(options)    
      end

      def wanliu_omniauth_options     
        OmniAuth::Strategies::WanliuId.default_options.client_options 
      end

      def auth_params
        @secure_state ||= SecureRandom.hex(24)
        {
          :response => "code",          
          :client_id =>  OmniAuth::Wanliu.config["app_id"],
          :redirect_uri => "http://#{request.env["HTTP_HOST"]}/auth/wanliuid/callback",
          :state =>  @secure_state     
        }
      end

      def foreg_ajax_auth(options)
        session["omniauth.state"] = options[:state]  
      end

      def authorize_url
        wanliu_omniauth_options.authorize_url
      end

    end
  end
end