require "spec_helper"

module Bing
  module Ads
    module API
      module V13
        module Services
          RSpec.describe CampaignManagement do
            let(:env) { :sandbox }
            let(:account_id) { "12345" }
            let(:customer_id) { "98765" }
            let(:campaign_types) { "Audience DynamicSearchAds Search Shopping" }
            let(:options) { { environment: env, account_id: account_id, customer_id: customer_id } }

            let(:response) do
              {
                envelope: {
                  body: {
                    get_campaigns_by_account_id_response: {
                      campaigns: {
                        campaign: ["something"]
                      }
                    }
                  }
                }
              }
            end

            subject { described_class.new(options) }

            describe "#get_campaigns_by_account_id" do
              it "calls `get_campaigns_by_account_id` with expected props" do
                expect(subject).to receive(:call)
                  .with(:get_campaigns_by_account_id, account_id: account_id, campaign_type: campaign_types)
                  .and_return(response)

                subject.get_campaigns_by_account_id(account_id)
              end
            end
          end
        end
      end
    end
  end
end

