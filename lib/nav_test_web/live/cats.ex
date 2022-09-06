defmodule NavTestWeb.CatsLive do
  use Phoenix.LiveView
  alias NavTestWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~H"""
    <div>
      <h1>CATS!</h1>

      <%= live_patch("(dogs)", to: Routes.dogs_path(@socket, :index)) %>
    </div>
    """
  end
end
