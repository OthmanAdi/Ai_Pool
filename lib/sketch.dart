Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: const Text.rich(
                  TextSpan(
                    text:
                        " Enter the new Internet,\n and optimize your life \n with the tools below",
                    style: TextStyle(
                      color: Color.fromRGBO(240, 238, 237, 1),
                      letterSpacing: 8,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FutureBuilder(
                                future: getAppNames(),
                                builder: (context, snapshot) {
                                  return CoPilot(documentID: docIDs[0]);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FutureBuilder(
                                future: getAppNames(),
                                builder: (context, snapshot) {
                                  return Dale2(documentID: docIDs[0]);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FutureBuilder(
                                future: getAppNames(),
                                builder: (context, snapshot) {
                                  return Lensa(documentID: docIDs[0]);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // 
      // 
      // 
      // 
      Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return CoPilot(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return CoPilot(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return CoPilot(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return CoPilot(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: const Text("Visit Website"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                child: Image.network(
                                  "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(37, 249, 250, 248),
                                indent: 30,
                                endIndent: 30,
                                thickness: 0.8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 10,
                                  right: 10,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: RichText(
                                    text: TextSpan(
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      text:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ])