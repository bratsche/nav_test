defmodule NavTestWeb.DogsLive do
  use Phoenix.LiveView
  alias NavTestWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~H"""
    <div>
      <h1>DOGS!</h1>

      <%= live_patch("(cats)", to: Routes.cats_path(@socket, :index)) %>
    </div>
    """
  end
end
