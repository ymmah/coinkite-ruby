require 'spec_helper'

describe Coinkite do
  before(:all) do
    @coinkite = Coinkite::Client.new(ENV['CK_API_KEY'], ENV['CK_API_SECRET'])
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
