defmodule Legato.Client do
  @url "/v4/reports:batchGet"

  def send(request) do
    middleware = [
      {Tesla.Middleware.BaseUrl, "https://analyticsreporting.googleapis.com"},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Headers, [{"Authorization", "Bearer " <> request.access_token }]}
    ]

    Tesla.client(middleware)
  end

end
