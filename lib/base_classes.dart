// class Node ----- ----- ----- ----- ----- //

// liste des objets Node enfants du Node courant "text"
class Node {
  // création du top Node emptyNode
  // pour pouvoir fournir un nodeParent par défaut
  // avant l'instanciation d'un nouveau Node
  static Node emptyNode = Node('-');
  // valeur du Node courant qui est enfant du Node nodeParent.
  // lors de sa construction, le Node est son propre parent Node nodeParent
  String text = "";
  Node nodeParent = emptyNode;

  // liste privée de tous les Node enfants
  // By adding the private field _children (initialized within the class constructor) and using a getter,
  // you can ensure that the children list always has an initial value,
  // even before an instance of the Node class is created, so even before the addChild() method is called.
  // This will prevent the linter warning from being displayed.
  // "Node child: Non-nullable instance field 'children' must be initialized."
  final List<Node> _children = []; // Private field - non nullable intitialised
  // obtenir la liste privée des Node enfants
  List<Node> get children => _children; // Getter for private field

  // créer un Node avec la valeur nodeText
  Node(String nodeText) {
    text = nodeText;
    nodeParent = this;
  }

  // ajouter un Node enfant dans la liste des Node enfants du Node courant qui est dès lors le nodeParent
  // pour contrôle, renvoit de la référence du Node nodeParent qui est celui qui a demandé l'ajout de l'enfant
  Node addChild(Node child) {
    // with non nullable, it's impossible to have a null for 'Node child'
    //if (child != null) {
    _children.add(child);
    nodeParent = this;
    return (nodeParent);
  }
}
/*
// class MindMap ----- ----- ----- ----- ----- //

class MindMap extends StatefulWidget {
  @override
  State<MindMap> createState() => _MindMapState();
}

// class MindMapState ----- ----- ----- ----- ----- //

class _MindMapState extends State<MindMap> {
  Graph graph = new Graph();

  @override
  void initState() {
    super.initState();

    // Créez un noeud pour chaque concept
    Node node1 = new Node("Concept 1");
    Node node2 = new Node("Concept 2");
    Node node3 = new Node("Concept 3");

    // Reliez les noeuds avec des flèches
    node1.addChild(node2);
    node2.addChild(node3);

    // Ajoutez les noeuds au graphique
    graph.addNode(node1);
    graph.addNode(node2);
    graph.addNode(node3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CustomPaint(
          painter: GraphPainter(graph),
        ),
      ),
    );
  }
}

// class Toolbar ----- ----- ----- ----- ----- //

class Toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Bouton pour modifier le texte des concepts
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Code pour modifier le texte des concepts
          },
        ),
        // Bouton pour changer la couleur des flèches
        IconButton(
          icon: Icon(Icons.color_lens),
          onPressed: () {
            // Code pour changer la couleur des flèches
          },
        ),
        // Bouton pour ajouter des images aux concepts
        IconButton(
          icon: Icon(Icons.image),
          onPressed: () {
            // Code pour ajouter des images aux concepts
          },
        ),
      ],
    );
  }
}

// class SearchBar ----- ----- ----- ----- ----- //

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Recherche",
      ),
      onChanged: (value) {
        // Code pour rechercher des concepts
      },
    );
  }
}

// class ExportDialog ----- ----- ----- ----- ----- //

class ExportDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Exporter la mind map"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Option pour exporter au format PDF
          RadioListTile(
            value: ExportFormat.pdf,
            groupValue: _exportFormat,
            title: Text("PDF"),
            onChanged: (value) {
              setState(() {
                _exportFormat = value;
              });
            },
          ),
          // Option pour exporter au format PNG
          RadioListTile(
            value: ExportFormat.png,
            groupValue: _exportFormat,
            title: Text("PNG"),
            onChanged: (value) {
              setState(() {
                _exportFormat = value;
              });
            },
          ),
        ],
      ),
      actions: [
        // Bouton pour exporter
        TextButton(
          child: Text("Exporter"),
          onPressed: () {
            // Code pour exporter la mind map
          },
        ),
      ],
    );
  }

  // Variable pour stocker le format d'exportation
  ExportFormat _exportFormat = ExportFormat.pdf;
}
*/
