defmodule Btree.Walk.Insert do
  alias Btree.Tree, as: Tree

  def btree_insert(nil, val) do
    %Tree{value: val}
  end

  def btree_insert(btree, val) when btree.value < val do
    %Tree{
      value: btree.value,
      ltree: btree.ltree,
      rtree: btree_insert(btree.rtree, val)}
  end

  def btree_insert(btree, val) when btree.value > val do
    %Tree{
      value: btree.value,
      ltree: btree_insert(btree.ltree, val),
      rtree: btree.rtree,
    }
  end

end
