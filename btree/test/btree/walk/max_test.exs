defmodule Btree.Walk.MaxTest do
  use ExUnit.Case

  test "the max of empty tree" do
    assert_raise Btree.EmptyError, fn -> Btree.Walk.Max.maxbtree(nil) end
  end

  test "the max of example tree 1" do
    assert 4 == Btree.Walk.Max.maxbtree(Btree.TreeExamples.example1)
  end

  test "the max of example tree 2" do
    assert 12 == Btree.Walk.Max.maxbtree(Btree.TreeExamples.example2)
  end






end
