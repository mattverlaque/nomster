CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                        # reasir1d
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"],                         # required
    #:region => 'us-east-1'
  }
  config.fog_directory  = ENV["AWS_BUCKET"]                     # required
  config.enable_processing = true

end