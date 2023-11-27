Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins Settings.front_domain # Next.jsからのoriginを許可

    resource "*",
             headers: :any,
             expose: %w[access-token uid client], #認証情報を Next.js で取得できるようにしてる
             methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
