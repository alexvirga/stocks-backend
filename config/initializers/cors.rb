Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://alexvirga.github.io"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end

  allow do
    origins "https://cors-anywhere.herokuapp.com/https:/fast-savannah-59172.herokuapp.com"
  end
end
