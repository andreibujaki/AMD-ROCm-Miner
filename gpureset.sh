#!/bin/bash
#checks every three seconds, if the card resets it, stops the proccess and continues it once the reset is done, sets the clocks and fans and goes the fuck on
RESET=`dmesg | grep reset\ suc` ; RESETCHECK=`dmesg | grep reset\ suc`; while true; do if [[ $RESET != $RESETCHECK ]] ; then sleep 3 ; kill -STOP `ps -ef | grep ethdcrminer64 | egrep -v grep | awk '{print $2}'` ; kill -CONT `ps -ef | grep ethdcrminer64 | egrep -v grep | awk '{print $2}'`; amdcovc fanspeed:0-11=88.3159 else ; sleep 3 ; RESETCHECK=`dmesg | grep reset\ suc` ; fi ; done 

		#Copyright 2004 GPL / Noguska L.L.C.#

                        #Installer  By#
                         #Jason Kurtz#
                    #"ScriptFu Fighter" :-)#
                          #Comptia A+#
              #Cisco Certified Network Associate#
        #Linux Professional Institute Certified Level-1#
            #Microsoft Certified System Engineer#
          #Microsoft Certified System Administrator#
         #Microsoft Certified Database Administrator#
                      #jkurtz@noguska.com#
