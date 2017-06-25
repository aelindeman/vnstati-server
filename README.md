# vnstati-server

Makes [`vnstati`](vnstati) images available through HTTP requests, to port 8000 by default.

## Requirements

The host machine (where `vnstati-server` will be running) must have `vnstat` and `vnstati` installed.

## Installing

Copy the binary:

    sudo cp vnstati-server /usr/local/bin/

Install an init script:

    sudo cp systemd/vnstati-server.service /etc/systemd/system/

## Using the server

Go to <http://localhost:8000> and you should see a help page with these instructions:

    usage: localhost:8000/:interface/:type
      interfaces: eth0, ...
      types: d, h, m, s, t

Replace `:interface` with the interface you'd like data for and `:type` with the image format you'd like. You can see examples of each image on [`vnstati`'s man page.][vnstati]

## Author

- [Alex Lindeman]

[Alex Lindeman]: http://github.com/aelindeman
[vnstati]: http://humdi.net/vnstat/

