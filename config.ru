require_relative './app/server'

# the below code allows rack to auto compile the sass in public folder to css file.
# comment out if you plan to serve your css from public
# require 'sass/plugin/rack'
# Sass::Plugin.options[:style] = :compressed
# use Sass::Plugin::Rack

run App
