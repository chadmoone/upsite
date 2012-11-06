class IndexController < ApplicationController
  def index
    @sites = []

    p1 = Net::Ping::External.new('75.148.16.241')
    p2 = Net::Ping::External.new('71.241.251.63')

    @sites << {:name => "Main Office", :up => p1.ping?}
    @sites << {:name => "Old Office", :up => p2.ping?}
  end
end
