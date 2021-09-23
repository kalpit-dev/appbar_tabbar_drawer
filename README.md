Appbar, Drawer and Tabbar Demo


1. All properties of appbar used in following screen:
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call_to_action_sharp, size: 40),
          )
        ],
        leading: Icon(Icons.cabin, size: 40),
        elevation: 100,
        centerTitle: false,
        titleSpacing: 20,
        toolbarHeight: 100,
        leadingWidth: 70,
        shadowColor: Colors.red,
        backgroundColor: Colors.green,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.yellow),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      
  toolbarHeight: 100, Used to change the height of Appbar
  
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 17 55](https://user-images.githubusercontent.com/10877701/134566357-ef4f205a-d54e-4215-9029-cd56f820da38.png)

2. Custom Bar created and used on multiple screens.
 
 ![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 17 57](https://user-images.githubusercontent.com/10877701/134566638-43128a0f-58a5-4404-a76e-dd9372a8918b.png)

3. Opening & Closing of drawer programtically using:
  scaffoldKey.currentState?.openDrawer(); // Open drawer
  Navigator.of(context).pop(true); // Close drawer
  
  ![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 18 00](https://user-images.githubusercontent.com/10877701/134566789-2c8f5aef-641b-422a-a6e9-6700767e44c3.png)

4. Tabbar demo with 3 tab pages.

![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 18 04](https://user-images.githubusercontent.com/10877701/134566869-2e4f8844-9db0-4c90-ac14-e393b3a1ebda.png)
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 18 05](https://user-images.githubusercontent.com/10877701/134566873-3e1c68fc-bf50-4c8e-ac75-9222a38543fc.png)
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-09-24 at 00 18 06](https://user-images.githubusercontent.com/10877701/134566874-884fa321-5f20-49fa-9e0c-16c63ef406e5.png)

