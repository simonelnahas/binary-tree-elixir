defmodule Btree.TreeExamples do
  alias Btree.Tree, as: Tree

  def example1 do
    %Tree{value: 3, rtree: %Tree{value: 3}, ltree: %Tree{value: 4, ltree: %Tree{value: 1}, rtree: %Tree{value: 2}}}
  end

  def example2 do
    %Tree{value: 7,
     rtree: %Tree{value: 8},
     ltree: %Tree{value: 12,
          ltree: %Tree{value: 4},
          rtree: %Tree{value: 1}}}
  end

  def sorted_example do
    %Tree{value: 5,
     ltree: %Tree{value: 3,
          ltree: %Tree{value: 2},
          rtree: %Tree{value: 4}},
      rtree: %Tree{value: 7,
          ltree: %Tree{value: 6},
          rtree: %Tree{value: 8}}}
  end

  def sorted_example2 do
    %Tree{value: 5,
     ltree: %Tree{value: 3,
          ltree: %Tree{value: 2},
          rtree: %Tree{value: 4}},
      rtree: %Tree{value: 10,
          ltree: %Tree{value: 8},
          rtree: %Tree{value: 12}}}
  end

end
