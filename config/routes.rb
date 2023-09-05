Rails.application.routes.draw do
  if ENV["DISPLAY_TOOL_FOR_DEV"].present?
    get "/api-docs/v1", to: redirect("/swagger/api_v1.html")
    root to: redirect("/api-docs/v1")
  end

  get "health_check", to: "health_check#index"
  get "unba", to: "unba#index"
end
