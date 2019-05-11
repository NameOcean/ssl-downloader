### How to download NameOcean's free ssl certificate?

You can download ssl from commandline by using download.sh command.

`$> /path/to/ssl-downloader/download.sh https://nameocean.s3.amazonaws.com/.../mywebsite.com.zip`

### Downloading multiple ssl certificates

Create a file named SSL_URLS (/path/to/ssl-downloader/SSL_URLS). Add ssl urls to file SSL_URLS as one url per line. Then run the command:

`$> /path/to/ssl-downloader/download_multiple.sh`

You can pass --reload-nginx argument to reload nginx after downloading ssl files.

### Dependencies

unzip and wget

On Ubuntu:
`$> apt install unzip wget`

### About NameOcean

[NameOcean](https://nameocean.net) provides [free wildcard ssl certificates](https://nameocean.net/ssl/) with every domain name. Certificates are valid for 90 days but automatically renewed. You can download certificates from NameOcean's dashboard or you can use this simple script to download certificates automatically to your server.
