#!/bin/bash
# raise fault
./sendFault.sh pnf2 lossOfSignal CRITICAL
./sendFault.sh FYNG TCA MAJOR
./sendFault.sh R2D2 TCA MINOR
./sendFault.sh 7DEV signalIsLost CRITICAL
./sendFault.sh nSky LossOfSignalAlarm CRITICAL
./sendFault.sh 1OSF HAAMRunningInLowerModulation MAJOR
./sendFault.sh SDNR connectionLossNe MAJOR

# raise stndDefined Alarm
./sendStndDefinedNotifyAlarm.sh pnf2 lossOfSignal CRITICAL new
./sendStndDefinedNotifyAlarm.sh FYNG TCA MAJOR new
./sendStndDefinedNotifyAlarm.sh R2D2 TCA MINOR new
./sendStndDefinedNotifyAlarm.sh 7DEV signalIsLost CRITICAL new
./sendStndDefinedNotifyAlarm.sh nSky LossOfSignalAlarm CRITICAL new
./sendStndDefinedNotifyAlarm.sh 1OSF HAAMRunningInLowerModulation MAJOR new
./sendStndDefinedNotifyAlarm.sh SDNR connectionLossNe MAJOR new

# raise threshold crossed alerts
./sendTca.sh pnf2 TCA CONT
./sendTca.sh FYNG TCA SET
./sendTca.sh R2D2 TCA CONT
./sendTca.sh 7DEV thresholdCrossed SET
./sendTca.sh nSky RSLBelowThreshold CONT
./sendTca.sh 1OSF TCA SET
