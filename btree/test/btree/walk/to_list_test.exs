defmodule Btree.Walk.ToListTest do
  alias Btree.Tree, as: Tree
  alias Btree.Walk.ToList, as: ToList
  alias Btree.TreeExamples, as: TreeExamples
  use ExUnit.Case

  test "list of empty tree" do
    assert [] == ToList.to_list(nil)
  end

  test "list of tree example 1" do
    assert [1, 4, 2, 3, 3] == ToList.to_list(TreeExamples.example1)
  end

  test "list of tree example 2" do
    assert [4, 12, 1, 7, 8] == ToList.to_list(TreeExamples.example2)
  end

  test "list of binary search tree 1" do
    assert [2, 3, 4, 5, 6, 7, 8] == ToList.to_list(TreeExamples.sorted_example)
  end

  test "list of binary search tree 2" do
    assert [2, 3, 4, 5, 8, 10, 12] == ToList.to_list(TreeExamples.sorted_example2)
  end

end
