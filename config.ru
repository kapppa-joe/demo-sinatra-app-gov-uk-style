require 'sass/plugin/rack'
require_relative './app/server'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack
run App
