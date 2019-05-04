require 'rubygems'
require 'bundler'
require 'pry'

Bundler.require

# Loads a .env file to pick up your environment variables
require 'dotenv'
Dotenv.load

use Rack::Reloader, 0
#use Rack::ContentLength
use Rack::Chunked

require './server'
run Server.new
