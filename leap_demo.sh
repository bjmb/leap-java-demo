#! /bin/bash

echo "The time now is `date`"

echo "Setting clock and injecting leap second 10 seconds from now."
# Inject leap second in background and set time 10 seconds before leap second inserted, run for 1 iteration.
./leap-a-day -s -i 1 &
echo -e "\n"

# We should see how time is set at 23:59:50 and after a few iterations it goes to the original time in the first command
for((i=1;i<=30;i+=1)); do echo "The time now is `date`"; sleep 0.01; done


# Run LeapTest which will exit when leap second encountered with rc 0, or -1 if no leap second encountered after 20 seconds.
#java LeapTest

