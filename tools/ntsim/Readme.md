If you see the login page (https://odlux.oam.yourdomainname) you are good to go and can start the (simulated) network.

```
docker compose -f docker-compose.yaml up -d
```

Usually the first ves:event gets lost. Please restart the O-DU docker container(s) to send a second ves:pnfRegistration.

```
docker compose -f docker-compose.yaml restart ntsim-ng-o-du-1122
python3 config.py
```

The python script configures the simulated O-DU and O-RU according to O-RAN hybrid architecture.

O-RU - NETCONF Call HOME and NETCONF notifications
O-DU - ves:pnfRegistration and ves:fault, ves:heartbeat

![ves:pnfRegistration in ODLUX](docs/nstim-ng-connected-after-ves-pnf-registration-in-odlux.png "ves:pnfRegistration in ODLUX")

'True' indicated that the settings through SDN-R to the NETCONF server were
successful.

SDN-R reads the fault events from DMaaP and processes them.
Finally the fault events are visible in ODLUX.

![ves:fault in ODLUX](docs/ves-fault-in-odlux.png "ves:fault in ODLUX")
