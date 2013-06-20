# paste-windows-path

This package just only define a syntax.

Using this syntax enables you to copy&paste Winodows path from address bar of Explorer into REPL directly.

## Usage:

	> (asdf:load-system :paste-windows-path)
	> (syntax:use-syntax :paste-windows-path)

and then, type `#"`and paste raw Windows path string and type `"`

You can also use `#n"` form where

* *n* = `0` or not specified  
	=> translate to a `PATHNAME` object;
* *n* > `0`  
	=> translate to a `STRING` object.

## example:

    > #"C:\Program Files"
    #P"C:/Program Files"
    > #0"C:\Program Files"
    #P"C:/Program Files"
    > #1"C:\Program Files"
    "C:\\Program Files"
    >

## License:
MIT
