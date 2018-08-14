# TODO modify this when deploying to staging
# this saves tons of staging/production problems
# modify the namespace before deploying

if Rails.env.staging?
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://localhost:6379/1", namespace: 'staging' }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://localhost:6379/1", namespace: 'staging' }
  end
end

