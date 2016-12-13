defmodule Helios.Coordinator do

    def loop(results \\ [], results_expected) do
        receive do
            {:ok, result} ->
                new_reults = [result|results]
                if results_expected ==Enum.count(new_reults) do
                    send self, :exit
                end
                loop(new_reults, results_expected)
            :exit ->
                IO.puts(results |> Enum.sort |> Enum.join(", "))
            _->
                loop(results, results_expected)
        end
    end
end
