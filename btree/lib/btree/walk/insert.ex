defmodule Btree.Walk.Insert do
  alias Btree.Tree, as: Tree

  def insert(nil, val) do
    %Tree{value: val}
  end

  def insert(btree, val) when btree.value < val do
    %Tree{
      value: btree.value,
      ltree: btree.ltree,
      rtree: insert(btree.rtree, val)}
  end

  def insert(btree, val) when btree.value > val do
    %Tree{
      value: btree.value,
      ltree: insert(btree.ltree, val),
      rtree: btree.rtree,
    }
  end

end
