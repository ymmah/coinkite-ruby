require 'spec_helper'

describe Coinkite do
  before(:all) do
    @coinkite = Coinkite::Client.new(ENV['CK_API_KEY'], ENV['CK_API_SECRET'])
  end

  describe "#_signable_endpoint" do
    let(:endpoint_with_query_string) { "https://api.coinkite.com/v1/my/accounts?foo=bar" }
    let(:endpoint_without_query_string) { "https://api.coinkite.com/v1/my/accounts" }

    it "should return endpoint without query string if given one" do
      expect(@coinkite.send(:_signable_endpoint, endpoint_with_query_string)).to eq(endpoint_without_query_string)
    end

    it "should return endpoint without query string if given none" do
      expect(@coinkite.send(:_signable_endpoint, endpoint_without_query_string)).to eq(endpoint_without_query_string)
    end
  end

  describe "#get" do
    context "with query string in endpoint" do
      it "should be retrievable" do
        WebMock.allow_net_connect!
        spot_quote = @coinkite.get('/v1/spot_quote?to_cct=ZAR')
        expect(spot_quote).to have_key("result")
      end
    end
  end

  describe "#get_accounts" do
    it "should be retrievable" do
      stub_request(:get, "https://api.coinkite.com/v1/my/accounts").to_return(body: fixture("accounts.json"))

      expect(@coinkite.get_accounts).to be_kind_of(Array)
    end
  end

  describe "#get_list('activity')" do

    before(:all) do
      @activities = @coinkite.get_list("activity")
    end

    let(:next_item) do
      stub_request(:get, "https://api.coinkite.com/v1/list/activity?limit=25&offset=0").to_return(body: fixture("list_activity.json"))
      @activities.next
    end

    it "should return an Enumerator" do
      expect(@activities).to be_kind_of(Enumerator)
    end

    describe "#next" do
      it "should yield the first item" do
        expect(next_item["CK_refnum"]).to eq("8DF23CD7E5-3934A1")
      end
    end

    describe "#next again" do
      it "should yield the second item" do
        expect(next_item["CK_refnum"]).to eq("635CBAE25F-34E37A")
      end
    end
  end
end
