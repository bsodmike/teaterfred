CarrierWave.configure do |config|
  
#  config.storage = :s3
#  config.s3_access_key_id = 'AKIAIMULIB7AFB7TLLUA'
#  config.s3_secret_access_key = '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'
#  config.s3_bucket = 'teaterfred'
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIMULIB7AFB7TLLUA',
    :aws_secret_access_key  => 'Eeb/UQL4THaXBcO4gl0fv4p/oxN7lqIge/KLLFOx'
  }
  config.fog_directory  = 'teaterfred'
  #config.fog_host       = 'https://assets.example.com'
  #config.fog_public     = false
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end