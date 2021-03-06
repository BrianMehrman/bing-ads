# frozen_string_literal: true

module Bing
  module Ads
    module API
      # Bing::Ads::API::V13::Constants
      module Constants
        root_v13_path = File.expand_path(__dir__)

        campaign_management_path = File.join(root_v13_path, 'constants', 'campaign_management.yml')
        bulk_path = File.join(root_v13_path, 'constants', 'bulk.yml')
        languages_path = File.join(root_v13_path, 'constants', 'languages.yml')
        limits_path = File.join(root_v13_path, 'constants', 'limits.yml')
        time_zones_path = File.join(root_v13_path, 'constants', 'time_zones.yml')
        wsdl_path = File.join(root_v13_path, 'constants', 'wsdl.yml')

        Persey.init(:default) do
          source :yaml, campaign_management_path, :campaign_management
          source :yaml, bulk_path, :bulk
          source :yaml, languages_path, :languages
          source :yaml, limits_path, :limits
          source :yaml, time_zones_path, :time_zones
          source :yaml, wsdl_path, :wsdl
          env :default
        end

        Bing::Ads::API::V13.constants = Persey.config
      end
    end
  end
end
