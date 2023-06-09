# FlutterFlunt

[![Build Status](https://travis-ci.org/pbissonho/flunt-dart.svg?branch=master)](https://travis-ci.org/pbissonho/flunt-dart)
[![codecov](https://codecov.io/gh/pbissonho/flunt-dart/branch/master/graph/badge.svg)](https://codecov.io/gh/pbissonho/flunt-dart)

Library that provides widgets to make it easier to use Flunt-dart in the flutter.
See [Flunt-dart](https://github.com/PedroBissonho/flunt-dart) to use this package.

## Usage

### Create a contract

Create a contract for use in FluntTextFormField.

``` dart
class NameContract extends Contract<String> {
  NameContract(String value, String name) : super(value, name) {
      isNotEmpty("not should be empty");
      hasMaxLen(40, "should have no more than 40 chars");
      hasMinLen(3, "should have at least 3 chars");
  }
}
```
### Use with FluntTextFormField
  
FluntTextFormField extends TextFormField and provides a simple way to use contracts.

``` dart
  FluntTextFormField(
    contract: (value) => StringContract(value, "Name"),
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.account_circle),
    )
)
```

