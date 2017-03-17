defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @alphabet %{a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9,
                j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17,
                r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25,
                z: 26}
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    Enum.map(@alphabet, fn{k, v} -> {k,
        if (v + shift) <= 26 do
          v + shift
        else
          v + shift - 26
        end
      }
    end)
    |> Enum.fetch(text)
  end
end
