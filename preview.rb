#!/usr/bin/env ruby

require "sinatra"

get "/*" do
  File.read(File.join(File.dirname(__FILE__), *params[:splat])).gsub(/\{\/?[a-z\:]+[^\}]*\}/i, '')
end
