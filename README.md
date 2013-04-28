OmniAuth Betable
==============

This gem contains the Betable strategy for OmniAuth.

For more information about the Betable api: http://developers.betable.com/

How To Use It
-------------

If you are using rails, you need to add the gem to your `Gemfile`:

    gem 'omniauth-betable'

You can pull them in directly from github e.g.:

    gem "omniauth-betable", :git => "git://github.com/stefanobernardi/omniauth-betable.git"

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
    	provider :betable, 'api_key', 'api_secret'
    end


You will obviously have to put in your key and secret, which you can get from the game dashboard.


After you have the gem running and the configuration is done, you can get to the follow url to log the user in:

	http://localhost:3000/auth/betable

The Omniauth Hash will look like this:

	#<OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash expires=false token="ACCESS_TOKEN"> extra=#<OmniAuth::AuthHash raw_info=#<OmniAuth::AuthHash first_name="Stefano" id="oIt0z5JsHXiRS0Ez" last_name="Bernardi">> info=#<OmniAuth::AuthHash::InfoHash first_name="Stefano" last_name="Bernardi"> provider="betable" uid="oIt0z5JsHXiRS0Ez">

In your game configuration on developers.betable.com you should set the redirect URI to:

	http://your_server:port/auth/betable/callback

Questions
---------

For any question, fell free to send me a tweet http://twitter.com/betableAPI

License
-------

Copyright (c) 2013 by Stefano Bernardi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.