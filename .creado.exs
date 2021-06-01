%{
  config: [
    %{
      name: "default",
      files: %{
        included: ~w{config lib test}
      },
      strict: true,
      color: true,
      checks: [
        {Credo.Check.Readability.MaxLineLegnt, max_lenght: 100}
      ]
    }
  ]
}
