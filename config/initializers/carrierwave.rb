CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAI6CM2YQTJN4LVNZQ',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }
  #config.cache_storage = :fog

  case Rails.env
  when 'production'
    config.fog_directory  = 'v-studio-production'
  when 'staging'
    config.fog_directory  = 'v-studio-staging'
  when 'development'
    config.fog_directory  = 'v-studio-development'
  when 'test'
    config.fog_directory  = 'v-studio-development'
  end
end
