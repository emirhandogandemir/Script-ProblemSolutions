#!/usr/bin/python

import sys
import getopt

def getOptions():
    ib_zone = None
    ib_name = None
    ib_view = None
    ib_target = None
    ib_key = None

    argv = sys.argv[1:]

    try:
        opts, args = getopt.getopt(argv, "f:1:",
                          ["ib_zone =",
                           "ib_name ="])
    except:
        print("Error")

    for opt , arg in opts:
         if opt in ['-z','--zone']:
             ib_zone=arg
         elif opt in ['-n','--name']:
               in_name=arg

    print (" ib_zone : "+ ib_zone + "ib_name :  "+ ib_name)

getOptions() 
