import 'package:flutter/material.dart';

class IndexedStackPage extends StatefulWidget {
  const IndexedStackPage({super.key});

  static const routeName = 'IndexedStack';

  @override
  State<IndexedStackPage> createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  List<String> names = <String>['Dash', 'John', 'Mary'];
  int _index = 0;
  final TextEditingController fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('IndexedStack')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 300,
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the name for a person to track',
              ),
              onSubmitted: (String value) {
                setState(() {
                  names.add(value);
                });
                fieldText.clear();
              },
              controller: fieldText,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_index == 0) {
                      _index = names.length - 1;
                    } else {
                      _index -= 1;
                    }
                  });
                },
                child: const Icon(
                  Icons.chevron_left,
                  size: 60,
                  key: Key('gesture1'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IndexedStack(
                    index: _index,
                    children: <Widget>[
                      for (String name in names) PersonTracker(name: name)
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_index == names.length - 1) {
                      _index = 0;
                    } else {
                      _index += 1;
                    }
                  });
                },
                child: const Icon(
                  Icons.chevron_right,
                  size: 60,
                  key: Key('gesture2'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PersonTracker extends StatefulWidget {
  const PersonTracker({super.key, required this.name});
  final String name;
  @override
  State<PersonTracker> createState() => _PersonTrackerState();
}

class _PersonTrackerState extends State<PersonTracker> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.name),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        border: Border.all(color: Colors.blue.shade400),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text('Name: ${widget.name}'),
          Text('Score: $counter'),
          TextButton.icon(
            key: Key('increment${widget.name}'),
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            label: const Text('Increment'),
          )
        ],
      ),
    );
  }
}
