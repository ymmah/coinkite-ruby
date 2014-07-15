require 'spec_helper'

describe Coinkite do
  let(:coinkite) { Coinkite::Client.new(ENV['CK_API_KEY'], ENV['CK_API_SECRET']) }

  describe "#get_accounts" do
    it "should be retrievable" do
      expect(coinkite.get_accounts).to be_kind_of(Array)
    end
  end
end
