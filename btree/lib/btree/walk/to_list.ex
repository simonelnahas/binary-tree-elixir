defmodule Btree.Walk.ToList do
  def to_list(nil) do
    []
  end

  #TODO: pre-order traversal of the tree.
  def to_list(btree) do
    to_list(btree.ltree)
      ++ [btree.value | to_list(btree.rtree)]
  end



end
