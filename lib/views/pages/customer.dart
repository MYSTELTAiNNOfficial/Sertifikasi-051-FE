part of 'pages.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  var temp;
  List<Customer> customers = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      //
    });
    getCustomers();
  }

  @override
  void dispose() {
    customers.clear();
    super.dispose();
  }

  Future<List<Customer>> getCustomers() async {
    // print(token);
    print(temp);
    var customerResult = await CustomerService.getCustomers(temp);
    setState(() {
      customers = customerResult;
    });
    return customers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 11, 19, 43),
        body: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text("List Customer",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ),
              SizedBox(
                height: 150,
                child: customers.isEmpty
                    ? const Align(
                        alignment: Alignment.center,
                        child: Text("Ups, tidak ada data",
                            style: TextStyle(color: Colors.white)))
                    : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: customers.length,
                        itemBuilder: ((context, index) {
                          return LazyLoadingList(
                              initialSizeOfItems: 10,
                              loadMore: () {},
                              child: CustomerCard(customers[index]),
                              index: index,
                              hasMore: true);
                        })),
              ),
            ],
          ),
        ));
  }
}
