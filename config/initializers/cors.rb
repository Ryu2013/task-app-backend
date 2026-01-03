Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # CloudFrontのドメイン（例: https://d12345.cloudfront.net）を指定
    origins "http://localhost:3000", "http://d39ivsn50b0rlf.cloudfront.net", "https://d39ivsn50b0rlf.cloudfront.net"

    resource "*",
      headers: :any,
      methods: [ :get, :post, :put, :patch, :delete, :options, :head ]
  end
end
