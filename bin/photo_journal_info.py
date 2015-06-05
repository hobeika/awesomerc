#!/usr/bin/env python
# -*- coding:utf-8 -*-

from BeautifulSoup import BeautifulSoup
import html2text
import urllib2
import argparse

parser = argparse.ArgumentParser(description="""Get the desc of a nasa PIA and
print it.""")
parser.add_argument('-p','--pia',
                    help="""PIA name.""",
                    type=str,
                    required=True)
args = parser.parse_args()
url = u"http://photojournal.jpl.nasa.gov/catalog/PIA%s" % args.pia

res = urllib2.urlopen(url)
html = res.read()
soup = BeautifulSoup(html)
udl = unicode(soup.find("dl"))
print html2text.html2text(udl).encode("utf8")
