# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.

# Improvements :

- No use of Scaffold widget in ListWidget.
- Unwanted use of **list** & **for loop** in listview of item widget inside build method which is not convenient way to do so. 
  Storing data instead of the widget is the convenient way.
- Use IconButton instead of MaterialButton.
- Use Icons.add instead of "+" string in the button.
- Taking a global variable in state class of list item won't be able persist the count value.
- We have to create a ListItemModel class with count & index of the list & create List of ListItemModel.
- We have update the list not the list of widget. Once we update list on the callback of add button, we get the reflection in the list.
- We have ValueKey() for to avoid data sharing & mismatch between list items in the list view.
- ListItemWidget should be stateless widget not the stateful widget as per current scenario.
- ListScreen should be stateful widget because we are incrementing the count value of the particular list item over their, whenever any list item click the add button.
- The main reason to store the count value inside the model, because whenever we scrolls down to the list and come back to the top of the list. 
  Then the ListItemWidget gets recreated and count variable created again and value will be zero.
  If we store data in the list then widget will get rebuild but with previous data so your widget state won't get lost.