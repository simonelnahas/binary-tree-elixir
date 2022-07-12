defmodule Btree.Walk.IsSorted do

  # Is sorted functions
  def is_sorted(btree) do
    is_sorted(btree, nil, nil)
  end

  def is_sorted(nil, _min, _max) do
    true
  end

  def is_sorted(btree, min, max) do
    (min == nil or min < btree.value) and (max == nil or btree.value < max)
      and is_sorted(btree.ltree, min, btree.value)
      and is_sorted(btree.rtree, btree.value, max)
  end
end
