CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV["AWS_KEY"],
    aws_secret_access_key: ENV["AWS_SECRET"],
    region: 'ap-northeast-1'
  }

  config.fog_directory = 'fankami-bucket'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/fankami-bucket'
  # case Rails.env
  #   when 'production'
  #     config.fog_directory = 'fankami-bucket'
  #     config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dummy'

  #   when 'development'
  #     config.fog_directory = 'dev.dummy'
  #     config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.dummy'

  #   when 'test'
  #     config.fog_directory = 'test.dummy'
  #     config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
  # end
end