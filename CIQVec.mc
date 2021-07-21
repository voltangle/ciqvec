// Well, welcome to the source code of Vec!
import Toybox.Lang;
import Toybox.System;

module CIQVec {
	class Vector {
		private var indexes = new [0]; // An array that will hold keys to the data in the dictionary, to reference later.
		private var content = {}; // A place where the data will be stored. Yea, this implementation just uses Dictionaries to store data
		function initialize() as Void {

		}

		/// Returns an item from the specified index.
		function get(index as Number) as Object {
			if (self.indexes[index] == null) {
				throw new IndexOutOfBoundsException("The index specified is out of bounds of the vector");
			}
		}

		/// Updates an item at a specified index. 
		function update(index as Number, item as Object) as Void {

		}

		/// Adds a new item to the vector.
		function push(item as Object) as Void {

		}

		/// Removes an item at a specified index.
		function pop(index as Number) as Void {

		}

		/// Returns a string representation of the vector.
		function toString() as String {

		}

		function slice(startIndex as Number, endIndex as Number) as Vector {

		}

		function clear() as Void {

		}
	}

	/// A simple class for an exception
	class IndexOutOfBoundsException extends Lang.Exception {
		private var msg as String = "Error message was not specified";
		function initialize(msg as String?) as Void {
			Exception.initialize();
			if (msg == null) {
				self.msg = msg;
			}
		}

		function getErrorMessage() as String {
			return self.msg;
		}
	}
}
