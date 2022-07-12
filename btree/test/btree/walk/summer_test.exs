defmodule Btree.Walk.SummerTest do
  alias Btree.Tree, as: Tree
  import Btree.TreeExamples
  use ExUnit.Case

  test "sum of empty tree is 0" do
    assert 0 == Btree.Walk.Summer.sum_walk(nil)
  end

  test "sum of 1 node tree" do
    assert 2 == Btree.Walk.Summer.sum_walk(%Tree{value: 2})
  end

  test "sum of example tree" do
    assert 13 == Btree.Walk.Summer.sum_walk(Btree.TreeExamples.example1)
  end

  test "sum of example tree 2" do
    assert 32 == Btree.Walk.Summer.sum_walk(Btree.TreeExamples.example2)
  end

end
