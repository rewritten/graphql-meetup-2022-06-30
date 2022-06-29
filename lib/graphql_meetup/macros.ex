defmodule GraphqlMeetup.Macros do
  defmacro trace(do: yield) do
    quote do
      %{module: m, function: {f, a}} = __ENV__
      m = m |> Module.split() |> Enum.join(".")

      IO.puts("---> #{m}.#{f}/#{a} - #{inspect(self())}")
      start = System.monotonic_time()

      result = unquote(yield)

      time = System.monotonic_time() - start
      IO.puts("<--- #{m}.#{f}/#{a} - #{inspect(self())} -- #{time} µs")

      result
    end
  end
end
