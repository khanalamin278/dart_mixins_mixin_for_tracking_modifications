/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_mixins_mixin_for_tracking_modifications_base.dart';

/*
Practice Question 1: Mixin for Tracking Modifications
Question:

Create a mixin ModificationTracker with a boolean field hasBeenModified initially 
set to false and a method modify() that sets this field to true.
Apply this mixin to two classes, Document and Image.
Implement a method in both Document and Image that when called, invokes modify() from the mixin.
*/

mixin ModificationTracker {
  bool hasBeenModified = false;
  void modify() {
    hasBeenModified = true;
  }
}

class Document with ModificationTracker {
  void editDocument() {
    modify();
  }
}

class Image with ModificationTracker {
  void editImage() {
    modify();
  }
}
