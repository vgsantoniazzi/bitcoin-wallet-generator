defmodule BitcoinWalletTest do
  use ExUnit.Case
  doctest BitcoinWallet

  test "generate/0 return new private key" do
    private_key = BitcoinWallet.generate_private_key()
    assert String.length(private_key) == 64
  end

  test "public_key_for/1 return correct eliptical curve" do
    private_key = BitcoinWallet.generate_private_key()
    public_key = BitcoinWallet.public_key_for(private_key)
    assert String.length(public_key) == 130
  end

  test "public_hash_for/1 return the public key from private_key" do
    private_key = BitcoinWallet.generate_private_key()
    public_hash = BitcoinWallet.public_hash_for(private_key)
    assert String.length(public_hash) == 20
  end

  test "public_address_for/1 return the address from private_key" do
    private_key = BitcoinWallet.generate_private_key()
    public_address = BitcoinWallet.public_address_for(private_key)
    assert String.length(public_address) == 34
  end
end
