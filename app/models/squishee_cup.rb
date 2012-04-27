require "net/http"

class SquisheeCup < ActiveRecord::Base

  attr_accessible :color, :name

  after_commit do
    req = Net::HTTP::Put.new("/squishee_cups/#{id}.json")
    req.body = to_json
    Net::HTTP.start('0.0.0.0', 7474).request(req)
  end


end
