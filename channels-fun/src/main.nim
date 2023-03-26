import os
import threadpool

var ch: Channel[string]
ch.open()

proc orderDish() =
  sleep(1000)
  ch.send("[French Fries]")

proc reciveKitchen() =
  let msg = ch.recv()
  echo "Received dish - working on it: " & msg

spawn orderDish()
spawn reciveKitchen()
sync()