defmodule Btree.Walk.InsertTest do
  use ExUnit.Case
  alias Btree.Walk.Insert, as: Insert

  test "insert to empty tree" do
    assert %Btree.Tree{value: 1}
            == Insert.insert(nil,1)
  end

  test "insert to 4 tree" do
    assert %Btree.Tree{ltree: %Btree.Tree{value: 1}, value: 4}
      == Insert.insert(%Btree.Tree{value: 4},1)
  end

end
