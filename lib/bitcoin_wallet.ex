defmodule BitcoinWallet do
  def generate_private_key do
    :crypto.strong_rand_bytes(32) |> Base.encode16(case: :lower)
  end

  def public_key_for(private_key) do
    :crypto.generate_key(:ecdh, :crypto.ec_curve(:secp256k1), private_key)
    |> elem(0)
    |> Base.encode16(case: :lower)
  end

  def public_hash_for(private_key) do
    private_key
    |> public_key_for
    |> hash(:sha256)
    |> hash(:ripemd160)
  end

  def public_address_for(private_key) do
    private_key
    |> public_hash_for
    |> Base58Check.encode(<<0x00>>)
  end

  defp hash(data, algorithm) do
    :crypto.hash(algorithm, data)
  end
end
