# witt - What Is The Time

Quickly check current time in different timezones without leaving your beloved terminal.

This is basically a ruby port of [t](https://github.com/cv/t).

## Installation

As easy as running:

```
$ gem install witt
```

## Usage

Call it passing as many city codes as you want, and it will give you the time at each city:

```
$ witt poa nyc lon
POA: ☀️  Mar 15, 17:13 (America/Sao_Paulo)
NYC: ☀️  Mar 15, 16:13 (America/New_York)
LON: 🌘  Mar 15, 20:13 (Europe/London)
```

It also takes airport codes:

```
$ witt poa jfk lhr
POA: ☀️  Mar 15, 17:13 (America/Sao_Paulo)
JFK: ☀️  Mar 15, 16:13 (America/New_York)
LHR: 🌘  Mar 15, 20:13 (Europe/London)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

