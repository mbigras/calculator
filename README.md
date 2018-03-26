# Calculator

> Run the hello world calculator example from reading The Cucumber Book

## Build

```
docker build --tag calculator .
```

## Questions

* Isn't it weird that the cucumber steps share instance variables?
* Is it possible to configure the cucumber cli from the `features/support/env.rb` file, ex: `cucumber --snippet-type regexp`

## Feature tests

```
bin/cucumber
```

## Links

* https://github.com/cucumber/aruba