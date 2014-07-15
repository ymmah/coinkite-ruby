#!/usr/bin/ruby

# replace these values
API_KEY = 'this-is-my-key'
API_SECRET = 'this-is-my-secret'

# Return a hex digest from HMAC(SHA256) over endpoint and timestamp
#
def sign(endpoint, force_ts=nil)
    require 'cgi'
    require 'time'
    require 'openssl'

    ts = force_ts || Time.now.utc.iso8601
    data = endpoint + '|' + ts
    hmac = OpenSSL::HMAC.hexdigest(OpenSSL::Digest::Digest.new('SHA256'), API_SECRET, data)

    return hmac, ts
end

puts sign('/example/endpoint', '2014-06-03T17:48:47.774453')
#puts sign('/example/endpoint')

