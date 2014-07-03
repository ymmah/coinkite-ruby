# Coinkite API Code for Ruby

[Learn more about Coinkite's API here](https://docs.coinkite.com/)
and visit the [Coinkite Main Site](https://coinkite.com/) to open your
account today!

## Introduction

Every request made to the Coinkite API requires three special header
lines. This code can generate the timestamp and signature value
required for 2 of those 3 headers. The remaining header is just
the API key itself.

Header lines you need:

	X-CK-Key: K5555a555-55a555aa-a55aa5a5555aaa5a
	X-CK-Timestamp: 2014-06-23T03:10:04.905376
	X-CK-Sign: 0aa7755aaa45189a98a5a8a887a564aa55aa5aa4aa7a98aa2858aaa60a5a56aa

## How to Install

Replace the two values shown here.

````ruby
	API_KEY = 'this-is-my-key'
	API_SECRET = 'this-is-my-secret'
````

The keys you need can be created on
[Coinkite.com under Merchant / API]([https://coinkite.com/merchant/api).


## More about Coinkite

Coinkite is the world's easiest and most powerful web wallet for
safely holding all your cryptocurrencies, including Bitcoin and Litecoin.

[Learn more about all we offer](https://coinkite.com/)


