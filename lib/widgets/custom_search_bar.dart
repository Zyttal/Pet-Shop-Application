import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).hintColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Product or Brand",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      border: InputBorder.none),
                  cursorColor: Theme.of(context).highlightColor,
                  onChanged: _handleSearch,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _handleSearch(String input) {}
