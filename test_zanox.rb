require 'zanox'
require 'vcr'

VCR.configure do |c|
    c.cassette_library_dir = './'
    c.hook_into :webmock # or :fakeweb
end

VCR.use_cassette('zanox') do
  Zanox::Report.sales Time.now
end

