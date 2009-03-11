#!/bin/bash
#
# $Id: start 613 2009-02-26 14:14:03Z Ammler $
#
# Subversion functions
#

# @param $1	path
function svn_revert {
	cd $1
	for i in `svn st | sed -n -e 's/^\?      //gp'`; do rm $i -Rf; done
	svn revert . -R
}