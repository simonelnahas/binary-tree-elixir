defmodule Btree.Walk.Summer do
  def summer(nil,_,_) do
    0
  end

  def summer(value, ltree_result, rtree_result) do
    value + ltree_result + rtree_result
  end

  def sum_walk(btree) do
    Btree.Walk.Walk.walk(btree, &summer/3)
  end

end
