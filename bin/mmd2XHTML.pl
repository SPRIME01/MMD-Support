#!/bin/sh
#
# mmd --- MultiMarkdown convenience script
#	<http://fletcherpenney.net/multimarkdown/>
#	Copyright (c) 2010-2011 Fletcher T. Penney
#
# Pass arguments on to the binary to convert text to XHTML
#

# Be sure to include multimarkdown in our PATH
export PATH="/usr/local/bin:$PATH"

if [ $# = 0 ]
then
	multimarkdown
else
until [ "$*" = "" ]
do
	multimarkdown -b "$1"
	shift
done
fi
