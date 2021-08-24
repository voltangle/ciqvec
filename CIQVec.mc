// Well, welcome to the source code of Vec!
import Toybox.Lang;
using Toybox.System;
using Toybox.Math;

module CIQVec {
	class Vector {
		private var indexes = new [0]; // An array that will hold keys to the data in the dictionary, to reference later.
		private var content = {}; // A place where the data will be stored. Yea, this implementation just uses Dictionaries to store data

		function initialize() {

		}

		/// Returns an item from the specified index.
		function get(index as Number) as Object {
			if (self.indexes.size() < index) {
				throw new IndexOutOfBoundsException("The index specified is out of bounds of the vector");
			}
			return self.content[self.indexes[index]];
		}

		/// Updates an item at a specified index. 
		function update(index as Number, data as Object?) as Void {
			if (self.indexes.size() < index) {
				throw new IndexOutOfBoundsException("The index specified is out of bounds of the vector");
			}
			self.content[indexes[index]] = data;
		}

		/// Adds a new item to the vector.
		function push(item as Object?) as Number {
			var key = Math.rand(); // Creates random key
			self.indexes.add(key); // Add to index
			self.content.put(key, item); // And add the value to the dictionary
			return self.indexes.indexOf(key); // And also return the index of te newly created item
		}

		/// Removes an item at a specified index.
		function pop(index as Number) as Void {
			// Clears this item from the indexes and the dictionary
			self.content.remove(self.indexes[index]);
			self.indexes.remove(self.indexes[index]);
		}

		function slice(startIndex as Number, endIndex as Number) as Vector {
			var slice = new Vector(); // Here will be all data corresponding to the slice range
			var sliceKeys = new [endIndex - startIndex]; // This array will hold all the keys that correspond to the slice range
			for (var i = 0; i >= sliceKeys.size(); i++) {

			}
			return slice;
		}

		function size() as Number {
			return self.indexes.size();
		}

		//! Returns a string version of the vector.
		function toString() as String {
			var result = "[";
			for (var i = 0; i <= self.indexes.size(); i++) {
				result = result + self.content[self.indexes[i]];
			}
			result = result + "]";
			return result;
		}
	}

	/// A simple class for an exception
	class IndexOutOfBoundsException extends Lang.Exception {
		private var msg as String = "Error message was not specified";
		function initialize(msg as String?) {
			Exception.initialize();
			if (msg != null) {
				self.msg = msg;
			}
		}

		function getErrorMessage() as String? {
			return self.msg;
		}
	}
}
