# pact_ruby_example
The [Zoo App Pact example](https://docs.pact.io/getting_started/), written in Ruby for both the Consumer and Provider.

To run the unit tests of the Consumer, thus creating a pact file:

```cd zoo_app && make test```

To run the unit tests of the Provider:

```cd animal_service && make test```

To run the verify the Provider against the created pact file:

```cd animal_service && make verify```
