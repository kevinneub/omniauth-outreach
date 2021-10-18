# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Omniauth Oauth2 strategy for Outreach v2
    class Outreach < OmniAuth::Strategies::OAuth2
      option :name, 'outreach'
      option :authorize_options, %i[response_type scope]
      option :client_options, {
        site:          'https://api.outreach.io',
        authorize_url: 'https://api.outreach.io/oauth/authorize',
        token_url:     'https://api.outreach.io/oauth/token'
      }

      option :access_token_options, {
        grant_type: 'authorization_code'
      }

      uid do
        raw_info.dig('meta', 'user', 'email').to_s
      end

      info do
        {
          email: raw_info.dig('meta', 'user', 'email').to_s,
          api:   raw_info.dig('meta', 'api').to_s
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= JSON.parse(access_token.get('/api/v2').body)
      end
    end
  end
end
