# Donker Utrecht

Tilemill map style for [Donker Utrecht's website](http://donkerutrecht.nl).

Export tiles:

    $ ./export.sh

MBTiles to PNGs:

    $ mb-util donker-utrecht.mbtiles tiles

To S3:

    export AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
    export AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>
    aws s3 cp tiles s3://tiles.donkerutrecht.nl/ --recursive --region eu-central-1
