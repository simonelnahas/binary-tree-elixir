defmodule Btree.Walk.IsSortedTest do
  use ExUnit.Case

  test "an empty tree" do
    assert Btree.Walk.IsSorted.is_sorted(nil) == true
  end

  test "a sorted tree" do
    assert Btree.Walk.IsSorted.is_sorted(Btree.TreeExamples.sorted_example) == true
  end

  test "an unsorted tree" do
    assert Btree.Walk.IsSorted.is_sorted(Btree.TreeExamples.example1) == false
  end

end
