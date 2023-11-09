

StatusCode        : 200
StatusDescription : OK
Content           : #!/bin/bash
                    
                    if ! [ -x "$(command -v docker-compose)" ]; then
                      echo 'Error: docker-compose is not installed.' >&2
                      exit 1
                    fi
                    
                    domains=(example.org www.example.org)
                    rsa_key_size=4096
                    data_path="./dat...
RawContent        : HTTP/1.1 200 OK
                    Connection: keep-alive
                    Content-Security-Policy: default-src 'none'; style-src 'unsafe-inline'; sandbox
                    Strict-Transport-Security: max-age=31536000
                    X-Content-Type-Options: nosniff
                    ...
Forms             : {}
Headers           : {[Connection, keep-alive], [Content-Security-Policy, default-src 'none'; style-src 'unsafe-inline'; 
                    sandbox], [Strict-Transport-Security, max-age=31536000], [X-Content-Type-Options, nosniff]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 2491



