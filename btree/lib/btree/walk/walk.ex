defmodule Btree.Walk.Walk do

  def walk(nil,f) do
    f.(nil,nil,nil)
  end

  def walk(btree,f) do
    f.(btree.value,
      walk(btree.ltree,f),
      walk(btree.rtree,f))
  end

end
