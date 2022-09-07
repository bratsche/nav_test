# NavTest

To reproduce the issue:

  * Navigate to [`http://localhost:4000/cats`](http://localhost:4000/cats)
  * Click the `(dogs)` link.
  * Observe that the URL in the browser window does not change.

Now, go into `mix.exs` and change the `phoenix_live_view` value to `0.7.10` (without the `~>` and re-run `mix.deps.get` and try to reproduce again. It behaves differently when it's not using anything older than `0.7.11`.
