require 'omniauth/strategies/oauth2'
require 'base64'

module OmniAuth
  module Strategies
    class Betable < OmniAuth::Strategies::OAuth2
      option :name, 'betable'

      option :client_options, {
        :site => 'https://betable.com',
        :authorize_url => 'https://betable.com/authorize',
        :token_url => 'https://api.betable.com/1.0/token'
      }

      uid { raw_info[:id] }

      info do
        {
          :first_name => raw_info[:first_name],
          :last_name => raw_info[:last_name]
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= deep_symbolize(access_token.params)
      end

      def request_phase
        redirect client.auth_code.authorize_url({:redirect_uri => callback_url}.merge(authorize_params.merge(request.params)))
      end

      def build_access_token
        headers = {
          :headers => {
            'Authorization' => "Basic " + Base64.encode64(client.id + ":" + client.secret).gsub(/\n/, '')
          }
        }
        verifier = request.params['code']
        client.auth_code.get_token(verifier, {:redirect_uri => callback_url}.merge(token_params.to_hash(:symbolize_keys => true)).merge(headers))
      end
    end
  end
end