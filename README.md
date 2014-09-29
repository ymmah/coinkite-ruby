# Coinkite Bitcoin API Code for Ruby

[Learn more about Coinkite's API here](https://docs.coinkite.com/)
and visit the [Coinkite Main Site](https://coinkite.com/) to open your
account today!

## Introduction

Every request made to the Coinkite API requires three special header
lines. The code in `sign.rb` can generate the timestamp and signature value
required for 2 of those 3 headers. The remaining header is just
the API key itself.

Header lines you need:

	X-CK-Key: K5555a555-55a555aa-a55aa5a5555aaa5a
	X-CK-Timestamp: 2014-06-23T03:10:04.905376
	X-CK-Sign: 0aa7755aaa45189a98a5a8a887a564aa55aa5aa4aa7a98aa2858aaa60a5a56aa

### Ruby Gems

[![Gem Version](https://badge.fury.io/rb/coinkite.svg)](http://badge.fury.io/rb/coinkite)

Use the [Coinkite Gem](http://rubygems.org/gems/coinkite) for a more complete solution that also checks SSL certificates, handles some errors and wraps some API calls. 

_Quick install_ `gem install coinkite`


## How to Install

Replace the two values shown here.

````ruby
	API_KEY = 'this-is-my-key'
	API_SECRET = 'this-is-my-secret'
````

The keys you need can be created at
[Coinkite.com under Merchant / API]([https://coinkite.com/merchant/api).


## More about Coinkite


Coinkite is an [international bitcoin wallet](https://coinkite.com/faq/about) focused on [hardcore privacy](https://coinkite.com/privacy), [bank-grade security](https://coinkite.com/faq/security), developer's [API](https://coinkite.com/faq/developers), [fast](https://coinkite.com/faq/security) transaction signing and [advanced features](https://coinkite.com/faq/features).

[Get Your Account Today!](https://coinkite.com/)

## Liscense

Copyright (C) 2014 Coinkite Inc. (https://coinkite.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


