#!/bin/awk -f

BEGIN {
        high_cpu = 0
        high_mem = 0
}

{
        num_cpu = strtonum($11)
        num_mem = strtonum($10)

        if(num_cpu > high_cpu){
                high_cpu = num_cpu
        }
        if(num_mem > high_mem){
                high_mem = num_mem
        }
}

END {
        print "CPU: " high_cpu
        print "MEM: " high_mem
}
