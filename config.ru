$:.unshift File::dirname(__FILE__)
$:.unshift "#{File::dirname(__FILE__)}/lib"

require './app/app'
require 'dotenv'
Dotenv.load

map '/' do
  use L10n::Application
  run Sinatra::Base
end

map '/hooks' do
   use L10n::Hooks
  run Sinatra::Base
end
