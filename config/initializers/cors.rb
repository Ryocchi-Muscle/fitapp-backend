Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins Settings.front_domain # Next.jsからのoriginを許可

    resource "*",
             headers: :any,
             expose: %w[access-token uid client], # トークンの受け渡し用に追加
             methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
