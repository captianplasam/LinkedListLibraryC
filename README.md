# LinkedListLibraryC
Linked List library in C for use in other projects.

|              Content              |
|-----------------------------------|
| [Description](#descriptions)      |
| [How to use](#how-to-use)         |
| [Custom Structs](#custom-structs) |
| [Functions](#functions)           |

## Descriptions

This is a linkedList library written in C for use in other porjects and it will contain everything a linkedList needs like appending, deleting, and printing.

## How to use

There are two main options for using the linkedlist library, the first option is:  
compile the program with the -c flag using gcc, which will compile it to a -o file the command to compile correctly would be:

    gcc -c linkedList.c (any flags the user wishes)
Then in the program put #include "linkedList" at the top, then compile the main program with the command:

    gcc -o (program name) (file to compile.c) linkedList.o (any flags the user wishes to use)
The second option is to use a Makefileand then use the following commands inside the Makefile:

    CC=gcc
    CFLAGS=(any flags the user wishes to use)

    linkedList.o: linkedList.c linkedList.h
        $(CC) -c $< $(CFLAGS)
Then just call make and it will compile to linkedList.o for use, or run the premade Makefile.  
If the user wishes to use no additional flags then just leave those spots blank.
## Custom Structs

- **Node** - This will hold all the data for that item of the list. It has 3 attributes one of them being data, which is a void pointer that will hold the information inside the node, a next pointer which will be a node struct pointer and point to the next item on the list and a prev pointer which will be a node struct pointer and point to the previous item on the list.
- **LinkedList** - This will be the actual list itself and its what will hold all the nodes in the list. This consists of 2 attributes both of them being Node struct which will point to the head and tail of the list, so the program can know where the list starts and ends for use in other functions.

## Functions
- **initialiseNode** - This assigns memory to a Node struct, sets all the attributes to NULL and returns it. It takes in no arguments and returns a Node struct.
- **freeNode** - This will free any memory assigned to a Node struct and deletes it from the program. This takes in a Node that will be used to free and returns nothing.
- **initialiseLinkedList** - This assgins memory to a LinkedList struct, sets all the attributes to NULL and returns it. It takes in no arguments and returns a LinkedList Struct.
- **freeLinkedList** - This will free a LinkedList struct starting from the point past in all the way to the end. This takes in a LinkedList struct and returns nothing.
- **appendLinkedList** - This will append an item to the linked list, append mean putting the item on the end of the list. This will take in the arguments of the list to append to and the data that the user wants to append to, and it will return nothing.
- **prependLinkedList** - This will prepend an item to the linked list, prepend mean putting the item at the start of the list. This will take in the arguments of the list to prepend to and the data that the user wants to prepend to, and it will return nothing.
- **removeListHead** - This will remove the head of the list and set the second item in the list to the new head unless there is no second item then the list will be empty. This takes in LinkedList struct and returns nothing.
- **removeListTail** - This will remove the tail of the list and set the second to last item in the list to the new tail unless there is no second to last item then the list will be empty. This takes in LinkedList struct and returns nothing.
- **printLinkedList** - This will take the list and print it out to the user. This will take in a list to print and a function describing how to print it out. The function to print it out will be one of the below (printChar, printInt, printDouble, printString). It returns nothing.
- **printChar** - It will print the data passed in as a character it is one of the options for the printLinkedList function. It takes in a void pointer and returns nothing.
- **printInt** - It will print the data passed in as an integer it is one of the options for the printLinkedList function. It takes in a void pointer and returns nothing.
- **printDouble** - It will print the data passed in as a double it is one of the options for the printLinkedList function. It takes in a void pointer and returns nothing.
- **printString** - It will print the data passed in as a string it is one of the options for the printLinkedList function. It takes in a void pointer and returns nothing.