defmodule Btree.Walk.Max do

  # Max functions
  def maxbtree(nil) do
    raise Btree.EmptyError
  end

  def maxbtree(btree) do
    maxbtree(btree, btree.value)
  end

  def maxbtree(nil, acc) do
    acc
  end

  def maxbtree(btree, acc) do
    max([acc, btree.value, maxbtree(btree.ltree,acc), maxbtree(btree.rtree,acc)])
  end

  def max([e]) do
    e
  end

  def max([h|rest]) do
    max(h,max(rest))
  end

end
