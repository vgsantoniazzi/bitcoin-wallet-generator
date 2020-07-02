## Welcome to BitcoinWallet

This project is an open-source bitcoin wallet generator based in Elixir. Use this source code to generate new wallets to transfer money.

## Getting Started

Clone the project:

```
git clone git@github.com:vgsantoniazzi/bitcoin-wallet-generator.git
```

## Usage

##### Install dependencies

```
$ mix deps.get
```

## CLI

```
$ iex -S mix

iex(1)> private_key = BitcoinWallet.generate_private_key
"827d066fa68a7b94de3be6f...."

iex(2)> private_key |> BitcoinWallet.public_address_for
"1JCbowSwEB4EqE7pV9m1ArbMYW5CKDEiSK"
```

Go see this wallet generated here: https://www.blockchain.com/btc/address/1JCbowSwEB4EqE7pV9m1ArbMYW5CKDEiSK

## Contributing

I :heart: Open source!

Before sending a pull request: Please, format the source code

```
make format
```

[Follow github guides for forking a project](https://guides.github.com/activities/forking/)

[Follow github guides for contributing open source](https://guides.github.com/activities/contributing-to-open-source/#contributing)

[Squash pull request into a single commit](http://eli.thegreenplace.net/2014/02/19/squashing-github-pull-requests-into-a-single-commit/)

## License

bitcoin-wallet-generator is released under the [MIT license](http://opensource.org/licenses/MIT).
