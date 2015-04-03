#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require 'nokogiri'
require 'open-uri'
require 'ipaddress'
require 'terminal-table'

program :name, 'IP Tracker'
program :version, '1.0.0'
program :description, 'Get informations about a specific IP address'
program :help, 'Author', 'Bruno Goncales <bgl.bruno@gmail.com>'

command :ip do |c|
  c.syntax = 'IpTracker [target]'
  c.description = 'Ip for obtaining information'
  c.action do |args, options|
    if IPAddress.valid? args.first
      rows = []

      page = Nokogiri::HTML(open('http://www.geoiptool.com/pt/?ip=' + args.first))
      page.css('div.sidebar-data').css('div.data-item').each do |item|
        label = item.css('span')[0].text.strip.gsub(':','')
        value = item.css('span')[1].text.strip 

        rows << [label, value]
      end
      options = {
        title: "Informations for #{ args.first }", 
        rows: rows
      }
      say Terminal::Table.new options
    else
      say 'IP invalid. Try again.'
    end
  end
end

never_trace!
default_command :ip
