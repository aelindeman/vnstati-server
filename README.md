# vnstat database HTTP server

Exports vnstat data as text via HTTP requests on port 7654.

This makes it easy to periodically fetch or dump vnstat data onto another machine that does not have or need vnstat installed.

## Requirements

The host machine (where `vnstat-server` will be running) should have `vnstat` installed.

## Installing

Copy the binary:

    sudo cp vnstat-server /usr/local/bin/

Then add the appropriate init script, if you'd like to run it as a service at boot, to its appropriate folder in `/etc`.

## Using the server

Go to <http://localhost:7654> and you should see something like:

    available interfaces: eth0, ...

You can then go to <http://localhost:7654/eth0> (or any other interface name) and see a dump of `vnstat`'s data for that interface.

## Credits

- Alex Lindeman - <hello@ael.me>
