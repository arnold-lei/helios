# Helios

##Introduction
This is a simple weather app that is built with Elixir and OTP. I am getting my weather data from openweather.org. 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `helios` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:helios, "~> 0.1.0"}]
    end
    ```

  2. Ensure `helios` is started before your application:

    ```elixir
    def application do
      [applications: [:helios]]
    end
    ```
