defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  jojojojo eblya
  """

  @doc """
    Хуярит колоду
  """

  def fii do
    dddd = 2 * 2
    dddd
  end

  def create do
    values = ["Ace", "two", "three", "King"]
    suits = ["clubs", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
    Мешает колоду
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    ебля
  """
  def contains?(deck, el) do
    Enum.member?(deck, el)
  end

  @doc """
    Спрашивает сколько карт вытащить из колоды
  """
  def count do
    IO.gets("? ") |> String.trim() |> String.to_integer()
  end

  @doc """
    выдает из колоды скока надо
  """
  def deal(deck) do
    size = Cards.count()
    Enum.split(deck, size)
  end

  @doc """
    выполняет всю хуйню разом
  """
  def go do
    {hand, _other} = Cards.create() |> Cards.shuffle() |> Cards.deal()
    hand
    other
  end
end
