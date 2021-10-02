import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/Settings_Screen';
  final Function saveFilters;
  final Map<String, bool> currentFilter;
  SettingsScreen(this.currentFilter, this.saveFilters, {Key? key})
      : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  @override
  void initState() {
    super.initState();
    _glutenFree = widget.currentFilter['gluten']!;
    _lactoseFree = widget.currentFilter['lactose']!;
    _vegan = widget.currentFilter['vegan']!;
    _vegetarian = widget.currentFilter['vegetarian']!;
  }

  Widget _buildSwitchTile(String title, String subtitle, bool currentValue,
      Function(bool)? newValue) {
    return SwitchListTile(
        activeColor: Theme.of(context).colorScheme.secondary,
        title: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle,
            style: TextStyle(fontSize: 14, fontFamily: 'Metrophobic')),
        value: currentValue,
        onChanged: newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              color: Colors.black,
              iconSize: 28,
              icon: const Icon(Icons.menu_rounded),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          title: Text('Your Settings',
              style: Theme.of(context).textTheme.subtitle2)),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Adjust your Meals Selection',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildSwitchTile(
                  'Gluten-Free', 'Display Gluten-Free Meals', _glutenFree,
                  (newValue) {
                setState(() {
                  _glutenFree = newValue;
                  final filters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(filters);
                });
              }),
              _buildSwitchTile(
                  'Lactose-Free', 'Display Lactose-Free Meals', _lactoseFree,
                  (newValue) {
                setState(() {
                  _lactoseFree = newValue;
                  final filters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(filters);
                });
              }),
              _buildSwitchTile(
                  'Vegetarian', 'Display Vegetarian Meals', _vegetarian,
                  (newValue) {
                setState(() {
                  _vegetarian = newValue;
                  final filters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(filters);
                });
              }),
              _buildSwitchTile('Vegan', 'Display Vegan Meals', _vegan,
                  (newValue) {
                setState(() {
                  _vegan = newValue;
                  final filters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(filters);
                });
              })
            ],
          )),
        ],
      ),
    );
  }
}
