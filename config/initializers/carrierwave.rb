require 'carrierwave/storage/abstract'


CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    require 'carrierwave/storage/file'
    config.storage = :file
    config.asset_host = "http://localhost:3000"
  elsif Rails.env.production?
    require 'carrierwave/storage/fog'
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'upload-test-imai'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/upload-test-imai'
  end
end
