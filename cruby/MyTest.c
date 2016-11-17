// Include the Ruby headers and goodies
#include "ruby.h"
#include <stdio.h>

// Defining a space for information and references about the module to be stored internally
VALUE MyTest = Qnil;

// Prototype for the initialization method - Ruby calls this, not you
void Init_mytest();

// Prototype for our method 'test1' - methods are prefixed by 'method_' here
VALUE method_test1(VALUE self);

// The initialization method for this module
void Init_mytest() {
	MyTest = rb_define_module("MyTest");
	rb_define_method(MyTest, "test1", method_test1, 0);
}

// Our 'test1' method.. it simply prints some message
VALUE method_test1(VALUE self) {
	printf("Hello Ruby from C Source!");
	return 0;
}
