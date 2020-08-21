#!/usr/bin/env ruby
require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'dofapi'
require 'perform'

Application.new.perform