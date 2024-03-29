import 'package:flutter/material.dart';
import 'package:ticket_tracker_template/Pages/customer_list.dart';
import 'package:ticket_tracker_template/Pages/ticket_list.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.train),
            title: const Text('Ticket List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TicketList()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.train),
            title: const Text('Customers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerList()),
              );
            },
          ),
        ],
      ),
    );
  }
}
