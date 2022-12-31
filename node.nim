import
  json,
  tables


type Node = object
  nodeType: string
  value: string
  attributes*: Table[string, Node]

let node = Node(
  nodeType: "expression",
  attributes:
    {
      "operator": Node(
        nodeType: "operator",
        value: "+"
      ),
      "left": Node(
        nodeType: "literal",
        value: "1"
      ),
      "right": Node(
        nodeType: "literal",
        value: "2"
      )
    }.toTable
)

echo (%*node).pretty()
